create procedure "_SMH"."FuelOilTestDates"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "TestYear" char(4),"TestDate" char(11),"TestPriority" char(25),"TestId" integer ) 
begin
  call "SMH"."FuelOilTestDates"(@VesselId,@EquipmentId,@TestResultId)
end