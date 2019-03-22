create procedure "_SMH"."RelatedVibrationTestsLoad"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "TestResultId" integer,
  "VesselName" char(80),
  "EquipmentName" char(80),
  "Priority" char(20),
  "TestTimestamp" timestamp,
  "Narrative" long varchar ) 
begin
  call "SMH"."RelatedVibrationTestsLoad"(@VesselId,@EquipmentId,@TestResultId)
end