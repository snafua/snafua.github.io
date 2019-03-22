create procedure /*
* _SMH.FilterListVesselsLoad - thawley
*/
"_SMH"."FilterListVesselsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "VesselId" smallint,
  "VesselName" char(56),
  "VesselClass" char(32),
  "ProgramManagerCode" char(32),
  "Filtered" smallint ) 
begin
  call "SMH"."FilterListVesselsLoad"(@GetDefault)
end