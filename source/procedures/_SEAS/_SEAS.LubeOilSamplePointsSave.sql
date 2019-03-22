create procedure "_SEAS"."LubeOilSamplePointsSave"( in @VesselId smallint,in @EquipmentId integer,in @MeasurementPointId integer,in @LubricantId integer,in @SampleVolume real,in @SumpVolume integer,in @PFANumber integer,in @StandardMeasurementPointId integer,in @FilterId integer,in @LubricantUse char(50) ) 
result( "SaveSucceeded" bit ) 
begin
  call "SEAS"."LubeOilSamplePointsSave"(@VesselId,@EquipmentId,@MeasurementPointId,@LubricantId,@SampleVolume,@SumpVolume,@PFANumber,@StandardMeasurementPointId,@FilterId,@LubricantUse)
end