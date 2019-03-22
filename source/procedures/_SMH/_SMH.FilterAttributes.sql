create procedure /*
* _SMH.FilterAttributes - thawley
*/
"_SMH"."FilterAttributes"()
result( 
  "Attribute" char(128),
  "AttributeClass" char(10),
  "DisplayedAs" char(128),
  "Description" char(256) ) 
begin
  call "SMH"."FilterAttributes"()
end