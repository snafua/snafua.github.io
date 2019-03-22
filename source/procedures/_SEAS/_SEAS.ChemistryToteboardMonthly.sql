create procedure "_SEAS"."ChemistryToteboardMonthly"( 
  in @Sort long varchar,
  in @Filter long varchar ) 
result( 
  "VesselName" char(80),
  "Month" char(7),
  "SeverityIndex" smallint,
  "Severity" char(20),
  "Expected" smallint,
  "Missed" smallint,
  "Taken" smallint,
  "Alarmed" smallint,
  "Status" char(20),
  "CurrentUserId" integer,
  "CurrentUser" char(85),
  "WatchSet" bit,
  "VesselId" smallint,
  "IsIncomplete" bit,
  "IsLocked" bit,
  "ChemistryId" char(20) ) 
begin
  call "SEAS"."ChemistryToteboardMonthly"(@Sort,@Filter)
end