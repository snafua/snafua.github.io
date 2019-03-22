create procedure "_SPM"."FilterSettingsDefaultValuesLoad"()
result( 
  "ViewAttribute" char(128),
  "AttributeClass" char(15),
  "DisplayedAs" char(128),
  "Comparator" char(25),
  "ValueForDefaultFilter" char(128) ) 
begin
  call "SPM"."FilterSettingsDefaultValuesLoad"()
end