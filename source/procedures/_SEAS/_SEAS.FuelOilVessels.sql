create procedure "_SEAS"."FuelOilVessels"()
result( 
  "VesselId" smallint,
  "VesselName" char(80) ) 
begin
  call "SEAS"."FuelOilVessels"()
end