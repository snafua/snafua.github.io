create procedure "_SEAS"."ChemistryWatchesVessels"()
result( 
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  call "SEAS"."ChemistryWatchesVessels"()
end