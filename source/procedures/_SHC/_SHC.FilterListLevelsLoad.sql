create procedure "_SHC"."FilterListLevelsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "MaintenanceLevelCode" char(25),
  "Filtered" smallint ) 
begin
  call "SHC"."FilterListLevelsLoad"(@GetDefault)
end