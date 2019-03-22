create procedure "_SEAS"."FuelOilPorts"( 
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
result( 
  "FuelOilPortId" smallint,
  "FuelOilPortName" char(50) ) 
begin
  call "SEAS"."FuelOilPorts"(@Sort,@Filter)
end