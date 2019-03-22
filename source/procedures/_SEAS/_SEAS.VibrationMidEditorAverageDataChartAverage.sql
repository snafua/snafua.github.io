create procedure "_SEAS"."VibrationMidEditorAverageDataChartAverage"( in @StandardEquipmentId integer,in @RangeId smallint,in @LocationId smallint ) 
result( "Axis" char(25),"Range" char(25),"CPM" real,"DataSum" long varchar ) 
begin
  call "SEAS"."VibrationMidEditorAverageDataChartAverage"(@StandardEquipmentId,@RangeId,@LocationId)
end