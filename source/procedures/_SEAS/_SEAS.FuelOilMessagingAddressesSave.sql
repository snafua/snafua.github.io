create procedure "_SEAS"."FuelOilMessagingAddressesSave"( 
  in @VesselId smallint,
  in @VesselAddresses long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingAddressesSave"(@VesselId,@VesselAddresses)
end