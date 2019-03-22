create procedure "_SWA"."MaintenanceCriticalityLevels"()
result( 
  "Criticality" char(2),
  "CriticalityDescription" char(50) ) 
begin
  call "SWA"."MaintenanceCriticalityLevels"()
end