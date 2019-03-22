create procedure "_SEAS"."FuelOilMessagingEmailsSave"( 
  in @VesselId smallint,
  in @VesselEmails long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingEmailsSave"(@VesselId,@VesselEmails)
end