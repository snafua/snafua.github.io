create procedure "_SPM"."MaintenanceScheduleServiceOrders"( 
  in @NodeId char(256) ) 
result( 
  "EventId" integer,
  "EventTimestamp" char(16),
  "EventClass" char(256),
  "EventDescription" char(50) ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceScheduleServiceOrders"(@NodeId)
end