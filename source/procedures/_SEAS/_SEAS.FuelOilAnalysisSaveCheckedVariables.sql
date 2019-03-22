create procedure "_SEAS"."FuelOilAnalysisSaveCheckedVariables"( 
  in @VariableSet char(25),
  in @CheckedVariables long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilAnalysisSaveCheckedVariables"(@VariableSet,@CheckedVariables)
end