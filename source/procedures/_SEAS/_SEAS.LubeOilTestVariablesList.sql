create procedure "_SEAS"."LubeOilTestVariablesList"( 
  in @Sort long varchar default null,
  in @Filter long varchar default null ) 
result( "VariableId" integer,"VariableLabel" char(20),"VariableDescription" char(50) ) 
begin
  call "SEAS"."LubeOilTestVariablesList"(@Sort,@Filter)
end