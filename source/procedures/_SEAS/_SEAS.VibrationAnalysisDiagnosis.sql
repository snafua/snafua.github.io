create procedure "_SEAS"."VibrationAnalysisDiagnosis"( in @VesselId integer,in @EquipmentId integer ) 
result( "DiagnosisId" integer,"Diagnosis" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationAnalysisDiagnosis"(@VesselId,@EquipmentId)
end