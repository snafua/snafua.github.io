create function "_PNG"."EstimateDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId smallint;
  declare @WorkItemId integer;
  declare @EstimateId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @EstimateId = "PNG"."WorkItemOrLibrayItemEstimateId"(@VesselId,@WorkItemId,null);
  if @EstimateId is not null then
    set @Result = "PNG"."EstimateDownload"(@EstimateId)
  end if;
  return(@Result)
end