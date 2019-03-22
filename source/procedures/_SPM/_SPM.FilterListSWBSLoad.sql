create procedure "_SPM"."FilterListSWBSLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "Filtered" smallint ) 
begin
  call "SPM"."FilterListSWBSLoad"(@GetDefault)
end