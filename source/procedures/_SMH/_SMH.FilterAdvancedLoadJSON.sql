create procedure /*
* _SMH.FilterAdvancedLoadJSON - thawley
*/
"_SMH"."FilterAdvancedLoadJSON"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "SMH"."FilterAdvancedLoadJSON"()
end