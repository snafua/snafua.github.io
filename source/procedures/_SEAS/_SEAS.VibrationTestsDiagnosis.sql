create procedure "_SEAS"."VibrationTestsDiagnosis"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "ManualDiagnosisId" integer,"DiagnosisDiscrepency" char(80),"DiagnosisSeverityDesc" char(20),"StandardDiagnosisId" integer,"StandardDiagnosisText" char(80),"DiagnosisDescrepencyExpert" char(80),"DiagnosisSeverityExpert" char(20),"StandardDiagnosisTextExpert" char(80),"StandardDiagnosisIdExpert" integer,"UserAddedRow" bit ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsDiagnosis"(@VesselId,@EquipmentId,@TestResultId)
end