create procedure "_SEAS"."FuelOilTestSlatesEdit"( 
  in @TestSlateId integer ) 
result( 
  "TestSlateId" integer,
  "TestSlateName" char(30),
  "TestSlateDescription" char(80),
  "TestSlateVariables" long varchar ) 
begin
  call "SEAS"."FuelOilTestSlatesEdit"(@TestSlateId)
end