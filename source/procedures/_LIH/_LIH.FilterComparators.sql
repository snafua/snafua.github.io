create procedure "_LIH"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "LIH"."FilterComparators"()
end