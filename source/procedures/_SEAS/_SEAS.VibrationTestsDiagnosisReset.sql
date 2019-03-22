create procedure "_SEAS"."VibrationTestsDiagnosisReset"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer ) 
begin
  call "SEAS"."VibrationTestsDiagnosisReset"(@VesselId,@EquipmentId,@TestId)
end