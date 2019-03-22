create procedure "_SEAS"."VibrationSetSpeed"( in @VesselId integer,in @EquipmentId integer,in @TestId integer,in @PointId integer,in @AxisId smallint,in @RangeId smallint,in @Speed integer,in @ApplyTo integer,in @RerunExpert bit ) 
begin
  call "SEAS"."VibrationSetSpeed"(@VesselId,@EquipmentId,@TestId,@PointId,@AxisId,@RangeId,@Speed,@ApplyTo,@RerunExpert)
end