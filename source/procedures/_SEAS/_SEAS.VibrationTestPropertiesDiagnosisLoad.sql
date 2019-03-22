create procedure "_SEAS"."VibrationTestPropertiesDiagnosisLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "Severity" char(20),"Diagnosis" char(80) ) 
begin
  call "SEAS"."VibrationTestPropertiesDiagnosisLoad"(@VesselId,@EquipmentId,@TestResultId)
end