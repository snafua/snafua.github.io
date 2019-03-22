create procedure "_SWA"."FilterAdvancedComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "SWA"."FilterAdvancedComparators"()
end