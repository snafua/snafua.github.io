create procedure /*
* _PAV.FilterAttributes - thawley
*/
"_PAV"."FilterAttributes"()
result( 
  "Attribute" char(128),
  "AttributeClass" char(10),
  "DisplayedAs" char(128),
  "Description" char(256) ) 
begin
  call "PAV"."FilterAttributes"()
end