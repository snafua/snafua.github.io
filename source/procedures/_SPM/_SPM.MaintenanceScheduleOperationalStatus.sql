create procedure "_SPM"."MaintenanceScheduleOperationalStatus"( 
  in @NodeId char(256) ) 
result( 
  "StateId" integer,
  "StateStartDate" char(16),
  "StateEndDate" char(16),
  "StateOpacity" numeric(3,2),
  "StateDescription" char(50) ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceScheduleOperationalStatus"(@NodeId)
end