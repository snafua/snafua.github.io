create procedure "_TAE"."AvailabilityTypes"()
result( 
  "AvailabilityType" char(15),
  "AvailabilityTypeDescription" char(15) ) 
begin
  call "TAE"."AvailabilityTypes"()
end