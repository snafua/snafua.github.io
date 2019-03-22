create procedure "_SEAS"."FuelOilTypeEdit"( 
  in @FuelOilTypeId integer ) 
result( 
  "FuelOilTypeId" smallint,
  "FuelOilType" char(50),
  "FuelOilTypeDescription" char(50),
  "FuelOilSlateID" integer,
  "FuelOilSlateName" char(30),
  "FuelOilSlateDescription" char(80) ) 
begin
  call "SEAS"."FuelOilTypeEdit"(@FuelOilTypeId)
end