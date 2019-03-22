create procedure -- JHM: 2013-06-12 - Moved to new file structure
"_SMH"."SpecialTestVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result(  /*
2013-04-29 - jhm - Created for special test variable return based on special test id
*/
  "CategoryId" smallint,
  "Category" char(50),
  "VariableId" char(20),
  "VariableDesc" char(50),
  "VariableChecked" bit,
  "HighAlarmLevel" double,
  "LowAlarmLevel" double ) 
begin
  call "SMH"."SpecialTestVariables"(@VesselId,@EquipmentId,@TestResultId)
end