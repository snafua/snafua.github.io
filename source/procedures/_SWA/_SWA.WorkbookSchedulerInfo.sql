create procedure "_SWA"."WorkbookSchedulerInfo"( 
  in @RowId char(1024) ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "PMCompletions" integer,
  "PMDeferrals" integer,
  "PMIncompletes" integer,
  "PMTotal" integer,
  "LastRunHourDate" char(10),
  "LastLogbookDate" char(10),
  "VMSJobs" integer,
  "LubeOilJobs" integer,
  "HourlyJobs" integer,
  "MeggerJobs" integer,
  "CurrentScheduleDate" char(10),
  "SchedulerResetPermissions" integer,
  "SchedulerRunPermissions" integer ) 
begin
  declare @VesselId integer;
  if "ISNUMERIC"(@RowId) = 1 then
    set @VesselId = @RowId
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  call "SWA"."WorkbookSchedulerInfo"(@VesselId)
end