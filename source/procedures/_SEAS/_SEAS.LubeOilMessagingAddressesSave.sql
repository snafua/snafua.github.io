create procedure "_SEAS"."LubeOilMessagingAddressesSave"( in @VesselId smallint,in @VesselAddresses long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilMessagingAddressesSave"(@VesselId,@VesselAddresses)
end