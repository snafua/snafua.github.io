create procedure "_SEAS"."VibrationMidEditorAverageDataDeleteRow"( in @StandardMachineId integer,in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @AxisId integer,in @RangeId integer,in @LocationId integer ) 
begin
  call "SEAS"."VibrationMidEditorAverageDataDeleteRow"(@StandardMachineId,@VesselId,@EquipmentId,@TestId,@AxisId,@RangeId,@LocationId)
end