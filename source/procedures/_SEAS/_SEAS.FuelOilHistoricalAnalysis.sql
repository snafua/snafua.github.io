create procedure "_SEAS"."FuelOilHistoricalAnalysis"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "TestId" integer,
  "Comment" long varchar,
  "DateCollected" char(16),
  "Priority" char(25),
  "SampleNumber" char(20),
  "FuelOilType" char(50),
  "FuelOilPortName" char(50),
  "VesselName" char(80) ) 
begin
  call "SEAS"."FuelOilHistoricalAnalysis"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end