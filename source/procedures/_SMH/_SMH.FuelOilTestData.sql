create procedure "_SMH"."FuelOilTestData"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "VariableId" integer,
  "VariableValue" char(12),
  "InAlarm" integer,
  "FuelOilSampleDate" timestamp,
  "FuelOilVariableCategory" char(50),
  "FuelOilVariableDesc" char(50) ) 
begin
  call "SMH"."FuelOilTestData"(@VesselId,@EquipmentId,@TestResultId)
end