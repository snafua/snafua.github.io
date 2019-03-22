create procedure /*
* _SMH.FilterInformation - thawley
*/
"_SMH"."FilterInformation"()
result( 
  "FilterId" integer,
  "Advanced" integer ) 
begin
  call "SMH"."FilterInformation"()
end