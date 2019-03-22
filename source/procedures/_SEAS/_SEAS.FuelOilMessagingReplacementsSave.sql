create procedure "_SEAS"."FuelOilMessagingReplacementsSave"( 
  in @ReplacementId integer,
  in @ReplacementValue char(1000) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilMessagingReplacementsSave"(@ReplacementId,@ReplacementValue)
end