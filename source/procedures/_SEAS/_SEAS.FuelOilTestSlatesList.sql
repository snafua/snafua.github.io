create procedure "_SEAS"."FuelOilTestSlatesList"( 
  in @Sort long varchar,
  in @Filter long varchar ) 
result( 
  "TestSlateId" integer,
  "TestSlateName" char(30),
  "TestSlateDescription" char(80) ) 
begin
  call "SEAS"."FuelOilTestSlatesList"(@Sort,@Filter)
end