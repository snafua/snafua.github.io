create procedure "_SPM"."MaintenanceScheduleAvailabilities"( 
  in @NodeId char(256) ) 
result( 
  "RangeId" integer,
  "RangeColor" char(7),
  "RangeDescription" char(50),
  "RangeEntryId" integer,
  "RangeEntryColor" char(7),
  "RangeEntryDescription" char(50),
  "RangeEntryStartDate" char(16),
  "RangeEntryEndDate" char(16) ) 
begin
  /*
AUTHOR:   JHM
CREATED:  2013-01-11
*/
  call "SPM"."MaintenanceScheduleAvailabilities"(@NodeId)
end