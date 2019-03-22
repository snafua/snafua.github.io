create procedure "_SEAS"."VibrationManualAnalysisRecommendationsRerun"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
begin
  call "SEAS"."VibrationManualAnalysisRecommendationsRerun"(@VesselId,@EquipmentId,@TestResultId)
end