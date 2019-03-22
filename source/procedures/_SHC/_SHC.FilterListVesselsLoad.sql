create procedure "_SHC"."FilterListVesselsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" smallint ) 
begin
  call "SHC"."FilterListVesselsLoad"(@GetDefault)
end