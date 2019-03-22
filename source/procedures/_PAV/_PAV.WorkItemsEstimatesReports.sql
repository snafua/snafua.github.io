create procedure "_PAV"."WorkItemsEstimatesReports"( 
  in @RowId char(1024) ) 
result( 
  "ReportId" integer,
  "ReportFileName" char(128) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  call "PAV"."WorkItemsEstimatesReports"(@VesselId,@WorkItemId,@RowId)
end