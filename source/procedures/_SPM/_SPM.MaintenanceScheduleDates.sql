create procedure "_SPM"."MaintenanceScheduleDates"( 
  in @NodeId char(256) ) 
result( 
  "Status" char(50),
  "MinDate" bigint,
  "MaxDate" bigint ) 
begin
  /*
AUTHOR:   JJD
CREATED:

2013-01-11  JHM - Modified to add the Status column
*/
  call "SPM"."MaintenanceScheduleDates"(@NodeId)
end