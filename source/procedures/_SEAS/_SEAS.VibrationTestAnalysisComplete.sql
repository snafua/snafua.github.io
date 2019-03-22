create procedure "_SEAS"."VibrationTestAnalysisComplete"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."VibrationTestAnalysisComplete"(@VesselId,@EquipmentId,@TestResultId)
end