create procedure /*
* _PAV.FilterListAvailabilityTypeLoad - thawley
*/
"_PAV"."FilterListAvailabilityTypeLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "AvailabilityType" char(15),
  "AvailabilityTypeDesc" char(56),
  "Filtered" smallint ) 
begin
  call "PAV"."FilterListAvailabilityTypeLoad"(@GetDefault)
end