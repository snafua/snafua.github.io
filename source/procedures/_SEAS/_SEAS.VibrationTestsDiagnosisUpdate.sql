create function "_SEAS"."VibrationTestsDiagnosisUpdate"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @StandardDiagnosisDiscrepency char(80),in @StandardDiagnosisSeverity char(20),in @StandardDiagnosisId integer,
  in @ManualDiagnosisId integer default 0 ) 
returns integer
begin
  if(@ManualDiagnosisId <= 0) then
    set @ManualDiagnosisId = null
  end if;
  if(@ManualDiagnosisId is null) then
    set @ManualDiagnosisId = "SEAS"."VibrationTestsDiagnosisInsert"(@VesselId,@EquipmentId,@TestResultId,@StandardDiagnosisDiscrepency,@StandardDiagnosisSeverity,@StandardDiagnosisId)
  else
    call "SEAS"."VibrationTestsDiagnosisUpdate"(@VesselId,@EquipmentId,@TestResultId,@ManualDiagnosisId,@StandardDiagnosisDiscrepency,@StandardDiagnosisSeverity,@StandardDiagnosisId);
    set @ManualDiagnosisId = -1
  end if;
  return(@ManualDiagnosisId)
end