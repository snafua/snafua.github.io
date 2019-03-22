create procedure "_SEAS"."VibrationMidEditorAverageDataChartSigma"( in @StandardEquipmentId integer,in @RangeId smallint,in @LocationId smallint ) 
result( "Axis" char(25),"Range" char(25),"CPM" real,"DataSum" long varchar ) 
begin
  call "SEAS"."VibrationMidEditorAverageDataChartSigma"(@StandardEquipmentId,@RangeId,@LocationId)
end