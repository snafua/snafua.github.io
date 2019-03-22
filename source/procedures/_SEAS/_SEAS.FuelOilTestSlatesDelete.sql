create procedure "_SEAS"."FuelOilTestSlatesDelete"( 
  in @TestSlateId integer ) 
result( 
  "DeleteSucceeded" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilTestSlatesDelete"(@TestSlateId)
end