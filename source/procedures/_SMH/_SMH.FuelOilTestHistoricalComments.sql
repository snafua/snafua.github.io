create procedure "_SMH"."FuelOilTestHistoricalComments"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "TestDate" char(16),
  "TestPriority" char(25),
  "Comments" long varchar,
  "CorrespondanceIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "MachineryHistoryIdValues" long varchar,
  "FuelOilSampleNumber" char(10),
  "ShowRelated" bit ) 
begin
  call "SMH"."FuelOilTestHistoricalComments"(@VesselId,@EquipmentId,@TestResultId)
end