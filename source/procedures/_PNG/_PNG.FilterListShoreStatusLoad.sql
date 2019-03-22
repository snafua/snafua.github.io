create procedure /*
* _PNG.FilterListShoreStatusLoad - thawley
*/
"_PNG"."FilterListShoreStatusLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Status" char(15),
  "Filtered" smallint ) 
begin
  call "PNG"."FilterListShoreStatusLoad"(@GetDefault)
end