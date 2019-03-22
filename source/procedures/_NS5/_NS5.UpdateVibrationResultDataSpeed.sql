create procedure "_NS5"."UpdateVibrationResultDataSpeed"( in @VesselId integer,in @EquipmentId integer,in @PointId integer,in @TestResultId integer,in @RangeId integer,in @AxisId integer,in @RPM integer ) 
begin
  call "NS5"."UpdateVibrationResultDataSpeed"(@VesselId,@EquipmentId,@PointId,@TestResultId,@RangeId,@AxisId,@RPM)
end