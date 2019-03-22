create procedure "_SEAS"."FuelOilPortAdd"( 
  in @FuelOilPortName char(50) ) 
result( 
  "FuelOilPortId" smallint,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilPortAdd"(@FuelOilPortName)
end