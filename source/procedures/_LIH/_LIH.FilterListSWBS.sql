create procedure "_LIH"."FilterListSWBS"( 
  in @GetDefault smallint default 0 ) 
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "Filtered" smallint ) 
begin
  call "LIH"."FilterListSWBS"(@GetDefault)
end