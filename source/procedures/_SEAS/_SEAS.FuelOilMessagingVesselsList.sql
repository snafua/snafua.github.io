create procedure "_SEAS"."FuelOilMessagingVesselsList"( 
  in @Sort long varchar ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "VesselEmails" long varchar,
  "VesselAddresses" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingVesselsList"(@Sort)
end