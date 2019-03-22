create procedure "_SEAS"."FuelOilSubPortDelete"( 
  in @FuelOilPortId smallint,
  in @FuelOilSubPortId smallint ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSubPortDelete"(@FuelOilPortId,@FuelOilSubPortId)
end