create procedure "_SPM"."MaintenanceContracts"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "WorkPackId" integer,
  "WorkPackText" char(20) ) 
begin
  call "SPM"."MaintenanceContracts"(@VesselId,@AvailabilityId)
end