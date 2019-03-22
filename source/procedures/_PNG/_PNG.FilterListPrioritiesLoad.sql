create procedure /*
* _PNG.FilterListPrioritiesLoad - thawley
*/
"_PNG"."FilterListPrioritiesLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Priority" char(25),
  "Filtered" smallint ) 
begin
  call "PNG"."FilterListPrioritiesLoad"(@GetDefault)
end