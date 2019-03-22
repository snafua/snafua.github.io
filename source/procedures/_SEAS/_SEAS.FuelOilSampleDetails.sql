create procedure "_SEAS"."FuelOilSampleDetails"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "DontConfirmComplete" bit,
  "IsLocked" bit,
  "Assessment" char(20) ) 
begin
  call "SEAS"."FuelOilSampleDetails"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end