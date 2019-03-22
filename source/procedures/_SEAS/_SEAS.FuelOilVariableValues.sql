create procedure "_SEAS"."FuelOilVariableValues"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "VariableId" integer,
  "VariableName" char(80),
  "VariableUnits" char(10),
  "VariableValue" char(10),
  "TestDate" timestamp,
  "TestResultId" integer,
  "DontTrend" bit,
  "FuelOilType" char(50),
  "FuelOilPortName" char(50),
  "VesselName" char(80) ) 
begin
  call "SEAS"."FuelOilVariableValues"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end