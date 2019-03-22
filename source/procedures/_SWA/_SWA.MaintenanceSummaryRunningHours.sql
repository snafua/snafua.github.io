create procedure -- AIM
"_SWA"."MaintenanceSummaryRunningHours"( 
  in @VesselId integer ) 
result( 
  "Equipment" char(128),
  "TaskCode" char(15),
  "MaintenanceCode" char(4),
  "Title" char(50),
  "DateLastCompleted" date,
  "HoursLastCompleted" integer,
  "Interval" integer,
  "DueAtHours" integer,
  "CurrentReadingHours" integer,
  "HoursUntilDue" integer,
  "HoursOverdue" integer ) 
begin
  /*
2018-09-18 AIM E-03361 B-19322
*/
  call "SWA"."MaintenanceSummaryRunningHours"(@VesselId)
end