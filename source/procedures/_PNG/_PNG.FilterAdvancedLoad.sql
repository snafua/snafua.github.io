create procedure /*
* _PNG.FilterAdvancedLoad - thawley
*/
"_PNG"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "PNG"."FilterAdvancedLoadJSON"()
end