create procedure /*
* _SMH.FilterListLevelsLoad - thawley
*/
"_SMH"."FilterListLevelsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "MaintenanceLevelCode" char(25),
  "Filtered" smallint ) 
begin
  call "SMH"."FilterListLevelsLoad"(@GetDefault)
end