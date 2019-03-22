create procedure "_SMH"."LubeOilTestData"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "VariableId" integer,
  "VariableValue" char(10),
  "InAlarm" integer ) 
begin
  call "SMH"."LubeOilTestData"(@VesselId,@EquipmentId,@TestResultId)
end