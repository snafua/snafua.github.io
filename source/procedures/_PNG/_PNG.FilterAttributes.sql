create procedure /*
* _PNG.FilterAttributes - thawley
*/
"_PNG"."FilterAttributes"()
result( 
  "Attribute" char(128),
  "AttributeClass" char(10),
  "DisplayedAs" char(128),
  "Description" char(256) ) 
begin
  call "PNG"."FilterAttributes"()
end