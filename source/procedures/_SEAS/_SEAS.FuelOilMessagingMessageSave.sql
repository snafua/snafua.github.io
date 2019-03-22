create procedure "_SEAS"."FuelOilMessagingMessageSave"( 
  in @MessageText long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingMessageSave"(@MessageText)
end