create procedure "_SEAS"."FuelOilVariableProperties"( 
  in @VariableId integer ) 
result( 
  "VariableName" char(20),
  "VariableDescription" char(50),
  "LaboratoryId" char(4),
  "Units" char(10),
  "Category" char(50),
  "Precision" integer,
  "Sensitivity" double ) 
begin
  call "SEAS"."FuelOilVariableProperties"(@Variableid)
end