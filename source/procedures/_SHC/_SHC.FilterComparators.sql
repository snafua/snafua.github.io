create procedure "_SHC"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "SHC"."FilterComparators"()
end