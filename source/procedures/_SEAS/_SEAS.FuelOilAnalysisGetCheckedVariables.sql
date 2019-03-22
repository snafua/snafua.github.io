create procedure "_SEAS"."FuelOilAnalysisGetCheckedVariables"( 
  in @VariableSet char(25) ) 
result( 
  "VariableId" integer ) 
begin
  call "SEAS"."FuelOilAnalysisGetCheckedVariables"(@VariableSet)
end