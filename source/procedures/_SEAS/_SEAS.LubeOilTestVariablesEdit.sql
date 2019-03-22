create procedure "_SEAS"."LubeOilTestVariablesEdit"( in @VariableId integer ) 
result( "VariableId" integer,"VariableLabel" char(20),"VariableDescription" char(50),"VariableUnitsId" integer,"VariableTestId" char(4),"VariablePrecision" integer,"VariableSensitivity" char(10),"VariableActive" bit ) 
begin
  call "SEAS"."LubeOilTestVariablesEdit"(@VariableId)
end