create procedure "_PAV"."WorkItemEstimateTotal"( 
  in @RowId char(1024) ) 
result( 
  "TotalDollars" numeric(15,2) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  call "PAV"."WorkItemEstimateTotal"(@VesselId,@WorkItemId)
end