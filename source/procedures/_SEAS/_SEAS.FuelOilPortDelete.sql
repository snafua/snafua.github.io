create procedure "_SEAS"."FuelOilPortDelete"( 
  in @FuelOilPortId smallint ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilPortDelete"(@FuelOilPortId)
end