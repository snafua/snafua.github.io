create procedure "_SMH"."SpecialTestsDates"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestYear" char(4),
  "TestDate" char(11),
  "TestPriority" char(20),
  "TestId" integer ) 
begin
  call "SMH"."SpecialTestsDates"(@VesselId,@EquipmentId,@TestResultId)
end