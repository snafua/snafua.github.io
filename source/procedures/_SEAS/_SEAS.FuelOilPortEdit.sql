create procedure "_SEAS"."FuelOilPortEdit"( 
  in @FuelOilPortId smallint,
  in @FuelOilPortName char(50) ) 
result( 
  "FuelOilPortId" smallint,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilPortEdit"(@FuelOilPortId,@FuelOilPortName)
end