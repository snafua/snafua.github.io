create procedure "_SWA"."MaintenanceEventOptions"()
result( 
  "MaintenanceEvent" char(50),
  "MaintenanceEventId" integer ) 
begin
  call "SWA"."MaintenanceEventOptions"()
end