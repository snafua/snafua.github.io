create procedure "_SEAS"."LubeOilTestVariablesSave"( in @VariableId integer,in @VariableLabel char(20),in @VariableDescription char(50),in @VariableUnits char(10),in @VariableTestId char(4),in @VariablePrecision integer,in @VariableSensitivity char(10),in @VariableActive bit ) 
result( "SaveSucceeded" bit,"VariableId" integer ) 
begin
  call "SEAS"."LubeOilTestVariablesSave"(@VariableId,@VariableLabel,@VariableDescription,@VariableUnits,@VariableTestId,@VariablePrecision,@VariableSensitivity,@VariableActive)
end