create procedure "_LIH"."FilterListVessels"( 
  in @GetDefault smallint default 0 ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" smallint ) 
begin
  call "LIH"."FilterListVessels"(@GetDefault)
end