create procedure "_SEAS"."LubeOilMessagingVesselsList"( in @Sort long varchar ) 
result( "VesselId" smallint,"VesselName" char(80),"VesselEmails" long varchar,"VesselAddresses" long varchar ) 
begin
  call "SEAS"."LubeOilMessagingVesselsList"(@Sort)
end