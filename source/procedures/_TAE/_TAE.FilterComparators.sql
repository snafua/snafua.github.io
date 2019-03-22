create procedure -- JLD B-14631 2017-11-22
"_TAE"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "TAE"."FilterComparators"()
end