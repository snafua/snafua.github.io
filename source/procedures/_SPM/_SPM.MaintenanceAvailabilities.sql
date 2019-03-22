create procedure "_SPM"."MaintenanceAvailabilities"( 
  in @VesselId integer ) 
result( 
  "AvailabilityId" integer,
  "AvailabilityText" char(20) ) 
begin
  call "SPM"."MaintenanceAvailabilities"(@VesselId)
end