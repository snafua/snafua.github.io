create procedure "_SEAS"."VibrationAnalysisAddToAverage"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer ) 
begin
  call "SEAS"."VibrationAnalysisAddToAverage"(@VesselId,@EquipmentId,@TestId)
end