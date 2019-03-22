create procedure "_SMH"."LubeOilTestDates"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestYear" char(4),
  "TestDate" char(11),
  "TestPriority" char(25),
  "TestId" integer,
  "Ferrogram" integer ) 
begin
  call "SMH"."LubeOilTestDates"(@VesselId,@EquipmentId,@TestResultId)
end