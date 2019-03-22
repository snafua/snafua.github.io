create procedure "_SEAS"."VibrationTestsRecommendationDelete"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @ManualDiagnosisId integer ) 
begin
  call "SEAS"."VibrationTestsRecommendationDelete"(@VesselId,@EquipmentId,@TestResultId,@ManualDiagnosisId)
end