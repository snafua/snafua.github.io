create procedure "_LIH"."FilterListAvailabilityTypes"( 
  in @GetDefault smallint default 0 ) 
result( 
  "AvailabilityType" char(15),
  "AvailabilityTypeDesc" char(56),
  "Filtered" smallint ) 
begin
  call "LIH"."FilterListAvailabilityTypes"(@GetDefault)
end