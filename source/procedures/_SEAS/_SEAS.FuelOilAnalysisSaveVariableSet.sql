create procedure "_SEAS"."FuelOilAnalysisSaveVariableSet"( 
  in @VariableSet char(25) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilAnalysisSaveVariableSet"(@VariableSet)
end