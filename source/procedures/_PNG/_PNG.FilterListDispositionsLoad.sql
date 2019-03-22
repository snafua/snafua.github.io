create procedure /*
* _PNG.FilterListDispositionsLoad - thawley
*/
"_PNG"."FilterListDispositionsLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Disposition" char(20),
  "Filtered" smallint ) 
begin
  call "PNG"."FilterListDispositionsLoad"(@GetDefault)
end