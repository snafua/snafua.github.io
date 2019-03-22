create procedure "_SEAS"."LubeOilTestSlatesSave"( in @TestSlateId integer,in @TestSlateName char(30),in @TestSlateDescription char(80),in @TestSlateVariables long varchar ) 
result( "SaveSucceeded" bit,"TestSlateId" integer ) 
begin
  call "SEAS"."LubeOilTestSlatesSave"(@TestSlateId,@TestSlateName,@TestSlateDescription,@TestSlateVariables)
end