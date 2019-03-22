create procedure "_SMH"."LubeOilTestHistoricalComments"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestId" integer,
  "TestDate" char(16),
  "TestPriority" char(25),
  "Comments" long varchar,
  "FerrogramIdValues" long varchar,
  "CorrespondanceIdValues" long varchar,
  "WorkRequestIdValues" long varchar,
  "MachineryHistoryIdValues" long varchar ) 
begin
  call "SMH"."LubeOilTestHistoricalComments"(@VesselId,@EquipmentId,@TestResultId)
end