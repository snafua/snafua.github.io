create procedure "_SEAS"."FuelOilTests"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "TestResultId" integer,
  "TestDate" timestamp,
  "LabId" char(8),
  "SampleId" char(9),
  "VariableId" integer,
  "OilValue" char(20),
  "AlarmStatus" smallint,
  "AlarmValue" char(50),
  "Priority" char(20),
  "FuelOilVariableCategory" char(50),
  "FuelOilVariableLabel" char(50),
  "IsUnanalyzed" bit,
  "IncludeInMessage" bit,
  "DisplaySequence" integer,
  "FuelOilType" char(50),
  "FuelOilPortName" char(50),
  "VesselName" char(80) ) 
begin
  call "SEAS"."FuelOilTests"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end