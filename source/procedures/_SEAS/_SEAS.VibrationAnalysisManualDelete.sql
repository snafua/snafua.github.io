create procedure "_SEAS"."VibrationAnalysisManualDelete"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
/*
Called from VAS.VASWriteFinalAnalysis
*/
begin
  call "SEAS"."VibrationAnalysisManualDelete"(@VesselId,@EquipmentId,@TestResultId)
end