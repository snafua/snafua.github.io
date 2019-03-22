create procedure "_SEAS"."VibrationTestsDiagnosisNoFault"()
result( "DiagnosisSeverityId" integer,"DiagnosisSeverityDesc" char(20),"StandardDiagnosisId" integer,"StandardDiagnosisText" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsDiagnosisNoFault"()
end