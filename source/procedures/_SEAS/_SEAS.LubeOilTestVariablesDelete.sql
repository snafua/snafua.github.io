create procedure "_SEAS"."LubeOilTestVariablesDelete"( in @VariableId integer ) 
result( "DeleteSucceeded" bit ) 
begin
  call "SEAS"."LubeOilTestVariablesDelete"(@VariableId)
end