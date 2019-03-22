create procedure -- Procedure _PAV.AvailabilityTypeList.sql
-- RJM 2013-06-12 To populate Availability Type dropdown, future implementation by vessel
"_PAV"."AvailabilityTypeList"( 
  in @VesselId smallint default null ) 
result( 
  "AvailabilityType" char(15) ) 
begin
  call "PAV"."AvailabilityTypeList"()
end