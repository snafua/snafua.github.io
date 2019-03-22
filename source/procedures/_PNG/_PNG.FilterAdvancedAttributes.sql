create procedure "_PNG"."FilterAdvancedAttributes"( 
  in @Module char(128) ) 
result( 
  "Attribute" char(128),
  "AttributeClass" char(10),
  "DisplayedAs" char(128),
  "Description" char(256) ) 
begin
  call "PNG"."FilterAdvancedAttributes"(@Module)
end