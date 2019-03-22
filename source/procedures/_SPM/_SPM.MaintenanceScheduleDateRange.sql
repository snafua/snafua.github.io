create procedure "_SPM"."MaintenanceScheduleDateRange"( 
  in @NodeId char(256) ) 
result( 
  "StartDate" char(16),
  "EndDate" char(16) ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceScheduleDateRange"(@NodeId)
end