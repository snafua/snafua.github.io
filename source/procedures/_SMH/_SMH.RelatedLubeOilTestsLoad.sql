create procedure "_SMH"."RelatedLubeOilTestsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "VesselId" smallint,
  "VesselName" char(80),
  "EquipmentId" integer,
  "EquipmentDesc" char(80),
  "TestResultId" integer,
  "SamplePoint" char(50),
  "SPID" integer,
  "Lubricant" char(50),
  "Severity" char(20),
  "SampleDate" char(16),
  "SMPId" integer,
  "Narrative" long varchar ) 
begin
  call "SMH"."RelatedLubeOilTestsLoad"(@VesselId,@EquipmentId,@TestResultId)
end