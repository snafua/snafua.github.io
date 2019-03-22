create procedure "_SEAS"."FuelOilTestVariablesEdit"( 
  in @VariableId integer ) 
result( 
  "VariableId" integer,
  "VariableLabel" char(50),
  "VariableTestId" char(4),
  "VariableDescription" char(50),
  "VariableDispSeq" smallint,
  "VariableCategoryId" smallint,
  "VariableUnitsId" char(10),
  "VariablePrecision" integer,
  "VariableActive" smallint,
  "VariableSensitivity" real ) 
begin
  call "SEAS"."FuelOilTestVariablesEdit"(@VariableId)
end