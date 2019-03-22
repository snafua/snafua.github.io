create procedure "_AWB"."MaintenanceScheduleIncompletes"( 
  in @NodeId char(1024) ) 
result( 
  "Incompletes" integer ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
  call "AWB"."MaintenanceScheduleIncompletes"(@VesselId)
end