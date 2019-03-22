create procedure "_SEAS"."FuelOilTypeCheck"( 
  in @FuelOilType char(50) ) 
result( 
  "DescriptionUnique" bit ) 
begin
  call "SEAS"."FuelOilTypeCheck"(@FuelOilType)
end