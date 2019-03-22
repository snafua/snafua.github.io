create procedure "_NS5"."InsertExpertSystemDiagnosis"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @ExpertSystemTimeStamp char(26),in @DiagnosisIndex integer,in @VibStandardDiagnosis char(80),in @VibDiagnosisSeverityIndex integer,in @VibStandardCompId char(10) ) 
begin
  -- {JJD} NS5DB.dll Buffer Error Fix
  set @_DiagCount = @_DiagCount+1;
  if @_DiagCount >= @_DiagStart then
    set @_DiagIndex = @_DiagIndex+1;
    set @DiagnosisIndex = @_DiagIndex;
    if "TRIM"(@VibStandardCompId) = '' then
      set @VibStandardCompId = null
    end if;
    call "NS5"."InsertExpertSystemDiagnosis"(@VesselId,@EquipmentId,@TestResultId,@ExpertSystemTimeStamp,@DiagnosisIndex,@VibStandardDiagnosis,@VibDiagnosisSeverityIndex,@VibStandardCompId)
  end if
end