create procedure "_SEAS"."ChemistryToteboardCurrent"( 
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
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
  call "SEAS"."ChemistryToteboardCurrent"(@Sort,@Filter)
end