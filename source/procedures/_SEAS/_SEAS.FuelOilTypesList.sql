create procedure "_SEAS"."FuelOilTypesList"( 
  in @Sort long varchar,
  in @Filter long varchar ) 
result( 
  "FuelOilTypeId" integer,
  "FuelOilType" char(50),
  "FuelOilTypeDescription" char(50),
  "FuelOilSlateId" integer,
  "FuelOilSlateName" char(30),
  "FuelOilSlateDescription" char(80) ) 
begin
  call "SEAS"."FuelOilTypesList"(@Sort,@Filter)
end