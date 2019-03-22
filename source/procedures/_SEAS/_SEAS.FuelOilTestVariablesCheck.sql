create procedure "_SEAS"."FuelOilTestVariablesCheck"( 
  in @VariableLabel char(50) ) 
result( 
  "LabelUnique" bit ) 
begin
  call "SEAS"."FuelOilTestVariablesCheck"(@VariableLabel)
end