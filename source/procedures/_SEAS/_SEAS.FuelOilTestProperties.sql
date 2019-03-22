create procedure "_SEAS"."FuelOilTestProperties"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "Port" char(50),
  "SubPort" char(50),
  "LabelNumber" char(50),
  "LabSampleId" char(9),
  "FuelType" char(50),
  "FuelDescription" char(50),
  "Supplier" char(50),
  "DateSampled" char(10),
  "LabLanded" char(10),
  "LabReported" char(25),
  "LabLoaded" char(10),
  "MessageSent" char(10),
  "MSCAlertLevel" char(20),
  "LabAlertLevel" char(20) ) 
begin
  call "SEAS"."FuelOilTestProperties"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end