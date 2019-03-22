create procedure /*
* _PNG.FilterListShipStatusLoad - thawley
*/
"_PNG"."FilterListShipStatusLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Status" char(15),
  "Filtered" smallint ) 
begin
  call "PNG"."FilterListShipStatusLoad"(@GetDefault)
end