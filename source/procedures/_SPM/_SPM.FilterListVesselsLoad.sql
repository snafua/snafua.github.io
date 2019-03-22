create procedure "_SPM"."FilterListVesselsLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" bit ) 
begin
  call "SPM"."FilterListVesselsLoad"(@GetDefault)
end