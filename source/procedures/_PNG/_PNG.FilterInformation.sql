create procedure /*
* _PNG.FilterInformation - thawley
*/
"_PNG"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "PNG"."FilterInformation"()
end