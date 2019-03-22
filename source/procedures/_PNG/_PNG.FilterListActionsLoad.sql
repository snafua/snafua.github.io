create procedure /*
* _PNG.FilterListActionsLoad - thawley
*/
"_PNG"."FilterListActionsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Action" char(25),
  "Filtered" smallint ) 
begin
  call "PNG"."FilterListActionsLoad"(@GetDefault)
end