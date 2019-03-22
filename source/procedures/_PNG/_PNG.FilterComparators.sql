create procedure /*
* _PNG.FilterComparators - thawley
*/
"_PNG"."FilterComparators"()
result( 
  "AttributeClass" char(10),
  "Comparator" char(25) ) 
begin
  call "PNG"."FilterComparators"()
end