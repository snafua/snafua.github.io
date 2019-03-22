create procedure "_SEAS"."VibrationAnalysisPreviousResultsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @Sort long varchar ) 
result( "VesselId" smallint,"EquipmentId" integer,"TestResultId" integer,"Timestamp" char(16),"EquipmentDescription" char(80),"Priority" char(20),"VesselName" char(80) ) 
begin
  call "SEAS"."VibrationAnalysisPreviousResultsLoad"(@VesselId,@EquipmentId,@TestResultId,@Sort)
end