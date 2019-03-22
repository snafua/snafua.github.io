create procedure "_SEAS"."LubeOilTestSlatesList"( in @Sort long varchar,in @Filter long varchar ) 
result( "TestSlateId" integer,"TestSlateName" char(30),"TestSlateDescription" char(50) ) 
begin
  call "SEAS"."LubeOilTestSlatesList"(@Sort,@Filter)
end