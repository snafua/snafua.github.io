create procedure "_LIT"."FilterListSWBS"( 
  in @GetDefault smallint default 0 ) 
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "Filtered" smallint ) 
begin
  call "LIT"."FilterListSWBS"(@GetDefault)
end