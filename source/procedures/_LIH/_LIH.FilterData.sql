create procedure "_LIH"."FilterData"()
result( 
  "Attribute" char(256),
  "AttributeClass" char(10),
  "Comparator" char(25),
  "Value" char(1024),
  "AnyAll" bit ) 
begin
  call "LIH"."FilterData"()
end