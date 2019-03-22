create procedure -- Procedure _PAV.AvailabilitiesList.sql
-- RJM 2013-06-12 To populate dropdown for existing Availabilities by vessel
--RJM 2013-07-01 Added @Module to call from repair module
"_PAV"."AvailabilitiesList"( 
  in @VesselId smallint,
  in @Module char(25) default 'Availabilities' ) 
result( 
  "AvailabilityId" integer,
  "Availability" char(128) ) 
begin
  call "PAV"."AvailabilitiesList"(@VesselId,@Module)
end