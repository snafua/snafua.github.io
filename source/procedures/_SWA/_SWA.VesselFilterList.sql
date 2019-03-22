create procedure "_SWA"."VesselFilterList"( 
  in @ApplicationId integer,
  in @GetDefault smallint default 0 ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" smallint ) 
begin
  call "SWA"."VesselFilterList"(@ApplicationId,@GetDefault)
end