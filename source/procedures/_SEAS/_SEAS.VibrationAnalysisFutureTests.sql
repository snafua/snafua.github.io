create procedure "_SEAS"."VibrationAnalysisFutureTests"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "FutureTests" smallint,
  "FutureTestsAnalyzed" smallint,
  "FutureTestsInProgress" smallint,
  "CurrentStatus" char(20),
  "VesselId" integer,
  "EquipmentId" integer,
  "TestResultId" integer,
  "IsLocked" bit,
  "AnalysisStatus" char(20),
  "VesselName" char(80),
  "EquipmentDesc" char(80),
  "TestTimestamp" timestamp,
  "Success" integer,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."VibrationAnalysisFutureTests"(@VesselId,@EquipmentId,@TestResultId)
end