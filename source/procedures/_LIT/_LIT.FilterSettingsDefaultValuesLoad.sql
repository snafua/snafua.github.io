create procedure "_LIT"."FilterSettingsDefaultValuesLoad"()
result( 
  "ViewAttribute" char(128),
  "AttributeClass" char(15),
  "DisplayedAs" char(128),
  "Comparator" char(25),
  "ValueForDefaultFilter" char(128) ) 
begin
  call "LIT"."FilterSettingsDefaultValuesLoad"()
end