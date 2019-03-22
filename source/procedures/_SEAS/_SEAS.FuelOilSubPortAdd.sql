create procedure "_SEAS"."FuelOilSubPortAdd"( 
  in @FuelOilPortId smallint,
  in @FuelOilSubPortName char(50) ) 
result( 
  "FuelOilPortId" smallint,
  "FuelOilSubPortId" smallint,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSubPortAdd"(@FuelOilPortId,@FuelOilSubPortName)
end