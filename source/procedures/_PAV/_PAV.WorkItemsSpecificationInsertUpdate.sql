create function "_PAV"."WorkItemsSpecificationInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @SpecificationId integer,
  in @SpecificationFileName char(256),
  in @SpecificationDocument long varchar,
  in @SpecificationTitle char(128) default null, --work item title if null
  in @SpecificationIsActive bit default null,
  in @SpecificationDateTime timestamp default null ) 
returns integer --SpecificationId
begin
  declare @Result integer;
  declare @Document long binary;
  set @SpecificationDocument = "TRIM"(@SpecificationDocument);
  if @SpecificationDocument = '' then set @SpecificationDocument = null end if;
  if @SpecificationDocument is not null then
    set @DocumentBlob = "BASE64_DECODE"(@SpecificationDocument);
    set @Result
       = "PAV"."WorkItemsSpecificationInsertUpdate"(
      @VesselId,
      @WorkItemId,
      @SpecificationId,
      @SpecificationFileName,
      @DocumentBlob,
      @SpecificationTitle,
      @SpecificationIsActive,
      @SpecificationDateTime)
  else
    set @Result = null
  end if;
  return(@Result)
end