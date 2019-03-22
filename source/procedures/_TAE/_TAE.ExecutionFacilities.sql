create procedure "_TAE"."ExecutionFacilities"()
result( 
  "FacilityId" integer,
  "FacilityName" char(256) ) 
begin
  call "TAE"."ExecutionFacilities"()
end