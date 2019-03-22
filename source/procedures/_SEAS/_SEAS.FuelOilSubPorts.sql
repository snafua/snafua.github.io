create procedure "_SEAS"."FuelOilSubPorts"( 
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
result( 
  "FuelOilPortId" smallint,
  "FuelOilPortName" char(50),
  "FuelOilSubPortId" smallint,
  "FuelOilSubPortName" char(50),
  "FuelOilPortSubPortName" char(100) ) 
begin
  call "SEAS"."FuelOilSubPorts"(@Sort,@Filter)
end