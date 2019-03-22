create procedure "_SEAS"."VibrationAverageDataChartTest"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @AxisId char(25),in @RangeId smallint,in @LocationId smallint ) 
result( "Axis" char(25),"Range" char(25),"CPM" real,"Data" long varchar ) 
begin
  call "SEAS"."VibrationAverageDataChartTest"(@VesselId,@EquipmentId,@TestId,@AxisId,@RangeId,@LocationId)
end