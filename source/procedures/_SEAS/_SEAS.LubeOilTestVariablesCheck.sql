create procedure "_SEAS"."LubeOilTestVariablesCheck"( in @VariableLabel char(20) ) 
result( "LabelUnique" bit ) 
begin
  call "SEAS"."LubeOilTestVariablesCheck"(@VariableLabel)
end