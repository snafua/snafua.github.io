create procedure "_SEAS"."ChemistryMessagingBodySave"( 
  in @MessageText long varchar ) 
result( 
  "Success" bit ) 
begin
  call "SEAS"."ChemistryMessagingBodySave"(@MessageText)
end