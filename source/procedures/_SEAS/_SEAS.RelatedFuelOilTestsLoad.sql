create procedure "_SEAS"."RelatedFuelOilTestsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9),
  in @Sort long varchar ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "EquipmentId" integer,
  "TestResultId" integer,
  "FuelOilType" char(50),
  "FuelOilPort" char(50),
  "FuelOilSubPort" char(50),
  "Severity" char(20),
  "SeverityIndex" smallint,
  "SampleDate" char(16),
  "Sort" long varchar ) 
begin
  call "SEAS"."RelatedFuelOilTestsLoad"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@Sort)
end