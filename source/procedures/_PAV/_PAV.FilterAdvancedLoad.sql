create procedure /*
* _PAV.FilterAdvancedLoadJSON - thawley
*/
"_PAV"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "PAV"."FilterAdvancedLoadJSON"()
end