create procedure "_SEAS"."VibrationTestsDiagnosisDelete"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @DiagnosisId integer ) 
begin
  call "SEAS"."VibrationTestsDiagnosisDelete"(@VesselId,@EquipmentId,@TestResultId,@DiagnosisId)
end