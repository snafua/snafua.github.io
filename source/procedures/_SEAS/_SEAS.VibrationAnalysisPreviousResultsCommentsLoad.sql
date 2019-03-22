create procedure "_SEAS"."VibrationAnalysisPreviousResultsCommentsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "ExpertSystem" long varchar,"ManualAnalysis" long varchar ) 
begin
  call "SEAS"."VibrationAnalysisPreviousResultsCommentsLoad"(@VesselId,@EquipmentId,@TestResultId)
end