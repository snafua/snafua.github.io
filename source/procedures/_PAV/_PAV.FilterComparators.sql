create procedure /*
* _PAV.FilterComparators - thawley
*/
"_PAV"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "PAV"."FilterComparators"()
end