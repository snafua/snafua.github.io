create procedure "_SEAS"."LubeOilHistoricalAnalysis"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @LabId integer,in @SampleId char(20) ) 
result( "Comment" long varchar,"TestId" integer,"DateCollected" timestamp,"SampleNumber" char(20),"Priority" char(20),"HasFerrogram" bit ) 
begin
  call "SEAS"."LubeOilHistoricalAnalysis"(@VesselId,@EquipmentId,@TestId,@LabId,@SampleId)
end