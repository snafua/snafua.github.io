create procedure "_SWA"."MaintenanceCriticalityVessels"( 
  in @VesselIds long varchar ) 
result( 
  "Criticality" char(2),
  "CriticalityDescription" char(50),
  "VesselId" integer ) 
begin
  call "SWA"."MaintenanceCriticalityVessels"(@VesselIds)
end