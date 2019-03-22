create procedure "_SEAS"."VibrationAnalysisManualStatusUpdate"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @ManualStatusId integer ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationAnalysisManualStatusUpdate"(@VesselId,@EquipmentId,@TestResultId,@ManualStatusId)
end