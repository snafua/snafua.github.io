create procedure "_SEAS"."LubeOilSampleProperties"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "FilterConfig" char(80),
  "SampleVolume" integer,
  "SumpSize" integer,
  "OilHours" integer,
  "EngineHours" integer,
  "OilRating" char(20),
  "LabAlertLevel" char(20),
  "SystemAlertLevel" char(20),
  "MetaRecord" char(20),
  "FuelType" char(80),
  "StandardMeasurementPointDesc" char(50),
  "LubricantInUse" char(50),
  "RegisteredLubricant" char(50) ) 
begin
  call "SEAS"."LubeOilSampleProperties"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end