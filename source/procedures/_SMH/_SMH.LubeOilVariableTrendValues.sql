create procedure "_SMH"."LubeOilVariableTrendValues"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "VariableId" integer,
  "VariableName" char(80),
  "VariableUnits" char(10),
  "VariableCategory" char(80),
  "VariableValue" char(10),
  "TestDate" bigint,
  "TestResultId" integer,
  "DontTrend" bit ) 
begin
  call "SMH"."LubeOilVariableTrendValues"(@VesselId,@EquipmentId,@TestResultId)
end