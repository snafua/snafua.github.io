create procedure "_SPM"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "SPM"."FilterComparators"()
end