create function "_LIT"."SpecificationDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  declare @SpecificationId integer;
  call "PNG"."RowIdDecodeSpecifications"(@RowId,@SpecificationId);
  call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId);
  set @SpecificationId = "ISNULL"(@SpecificationId,"PNG"."WorkItemsLibrarySpecificationId"(@WorkItemLibraryId));
  set @Result = "PNG"."SpecificationDownload"(@SpecificationId);
  return(@Result)
end