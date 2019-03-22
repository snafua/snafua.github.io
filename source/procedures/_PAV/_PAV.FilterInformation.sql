create procedure /*
* _PAV.FilterInformation - thawley
*/
"_PAV"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "PAV"."FilterInformation"()
end