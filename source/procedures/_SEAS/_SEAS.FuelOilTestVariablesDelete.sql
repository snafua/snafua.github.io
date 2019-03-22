create procedure "_SEAS"."FuelOilTestVariablesDelete"( 
  in @VariableId integer ) 
result( 
  "DeleteSucceeded" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilTestVariablesDelete"(@VariableId)
end