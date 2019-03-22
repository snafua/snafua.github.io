create procedure "_SEAS"."FuelOilMessagingLabEmailSave"( 
  in @LabEmail long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingLabEmailSave"(@LabEmail)
end