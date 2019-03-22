create function "_PNG"."SpecificationDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @SpecificationId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @SpecificationId = "PNG"."WorkItemsSpecificationId"(@VesselId,@WorkItemId);
  set @Result = "PNG"."SpecificationDownload"(@SpecificationId);
  return(@Result)
end