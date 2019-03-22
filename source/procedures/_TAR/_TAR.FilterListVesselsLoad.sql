create procedure "_TAR"."FilterListVesselsLoad"( in @GetDefault smallint default 0 ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClass" char(30),
  "ProgramManagerCode" char(10),
  "Filtered" integer ) 
begin
  call "TAR"."FilterListVesselsLoad"(@GetDefault)
end