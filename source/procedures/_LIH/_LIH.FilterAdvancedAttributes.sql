create procedure "_LIH"."FilterAdvancedAttributes"()
result( 
  "Attribute" char(128),
  "AttributeClass" char(10),
  "DisplayedAs" char(128),
  "Description" char(256) ) 
begin
  call "LIH"."FilterAdvancedAttributes"()
end