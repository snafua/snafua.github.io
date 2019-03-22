create function "_LIH"."SpecificationDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @SpecificationId integer;
  call "LIH"."RowIdDecode"(@RowId,@VesselId,@WorkItemId);
  set @SpecificationId = "PNG"."WorkItemsSpecificationId"(@VesselId,@WorkItemId);
  set @Result = "PNG"."SpecificationDownload"(@SpecificationId);
  return(@Result)
end