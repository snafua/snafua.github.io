create procedure "_SWA"."WorkbookJobsBreakdown"( 
  in @RowId char(1024) ) 
result( 
  "VMSJobs" integer,
  "LubeOilJobs" integer,
  "HourlyJobs" integer,
  "MeggerJobs" integer ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "SWA"."WorkbookJobsBreakdown"(@VesselId)
end