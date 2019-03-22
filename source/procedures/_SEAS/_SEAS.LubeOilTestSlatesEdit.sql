create procedure "_SEAS"."LubeOilTestSlatesEdit"( in @TestSlateId integer ) 
result( "TestSlateId" integer,"TestSlateName" char(30),"TestSlateDescription" char(80),"TestSlateVariables" long varchar ) 
begin
  call "SEAS"."LubeOilTestSlatesEdit"(@TestSlateId)
end