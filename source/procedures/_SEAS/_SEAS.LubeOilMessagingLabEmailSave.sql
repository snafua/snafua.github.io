create procedure "_SEAS"."LubeOilMessagingLabEmailSave"( in @LabEmail long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilMessagingLabEmailSave"(@LabEmail)
end