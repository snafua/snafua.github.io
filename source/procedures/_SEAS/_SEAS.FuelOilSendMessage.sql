create procedure "_SEAS"."FuelOilSendMessage"( 
  in @VesselId smallint,
  in @MessageCC long varchar,
  in @Samples long varchar,
  in @SampleCount integer,
  in @AlertCount integer,
  in @Message long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSendMessage"(@VesselId,@MessageCC,@Samples,@SampleCount,@AlertCount,@Message)
end