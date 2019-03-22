create procedure "_SEAS"."ChemistryMessagingVesselsList"( 
  in @Sort long varchar ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "VesselEmails" long varchar,
  "VesselAddresses" long varchar ) 
begin
  call "SEAS"."ChemistryMessagingVesselsList"(@Sort)
end