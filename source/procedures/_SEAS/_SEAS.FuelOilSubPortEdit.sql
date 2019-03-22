create procedure "_SEAS"."FuelOilSubPortEdit"( 
  in @FuelOilPortId smallint,
  in @FuelOilSubPortId smallint,
  in @FuelOilSubPortName char(50) ) 
result( 
  "FuelOilPortId" smallint,
  "FuelOilSubPortId" smallint,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSubPortEdit"(@FuelOilPortId,@FuelOilSubPortId,@FuelOilSubPortName)
end