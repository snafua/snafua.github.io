create procedure "_SEAS"."LubeOilMessagingEmailsSave"( in @VesselId smallint,in @VesselEmails long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilMessagingEmailsSave"(@VesselId,@VesselEmails)
end