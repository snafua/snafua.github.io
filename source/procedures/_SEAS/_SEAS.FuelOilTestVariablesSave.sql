create procedure "_SEAS"."FuelOilTestVariablesSave"( 
  in @VariableId integer,
  in @VariableLabel char(50),
  in @VariableDescription char(50),
  in @VariableUnits char(10),
  in @VariableTestId char(25),
  in @VariablePrecision integer,
  in @VariableSensitivity real default 1,
  in @VariableActive smallint default 1 ) 
result( 
  "SaveSucceeded" bit,
  "VariableId" integer,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilTestVariablesSave"(
  @VariableId,
  @VariableLabel,
  @VariableDescription,
  @VariableUnits,
  @VariableTestId,
  @VariablePrecision,
  @VariableSensitivity,
  @VariableActive)
end