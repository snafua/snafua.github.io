create procedure "_SEAS"."ChemistryQuickMessageSend"( 
  in @VesselId smallint,
  in @Month char(10),
  in @CC long varchar,
  in @BCC long varchar,
  in @Subject long varchar,
  in @Body long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."ChemistryQuickMessageSend"(@VesselId,@Month,@CC,@BCC,@Subject,@Body)
end