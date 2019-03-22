create procedure "_SEAS"."LubeOilMessagingMessageSave"( in @MessageText long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilMessagingMessageSave"(@MessageText)
end