create procedure /*
* _SMH.FilterComparators - thawley
*/
"_SMH"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "SMH"."FilterComparators"()
end