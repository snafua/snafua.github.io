create procedure "_SEAS"."FuelOilTestSlatesSave"( 
  in @TestSlateId integer,
  in @TestSlateName char(30),
  in @TestSlateDescription char(80),
  in @TestSlateVariables long varchar ) 
result( 
  "SaveSucceeded" bit,
  "TestSlateId" integer,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilTestSlatesSave"(@TestSlateId,@TestSlateName,@TestSlateDescription,@TestSlateVariables)
end