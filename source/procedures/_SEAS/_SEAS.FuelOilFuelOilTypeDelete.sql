create procedure "_SEAS"."FuelOilFuelOilTypeDelete"( 
  in @FuelOilTypeId smallint ) 
result( 
  "DeleteSucceeded" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilFuelOilTypeDelete"(@FuelOilTypeId)
end