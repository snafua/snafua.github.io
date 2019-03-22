create procedure "_SEAS"."VibrationChartPreferencesUpdate"( in @SeriesColors long varchar,in @AverageColors long varchar,in @ShowMajorLines long varchar,in @MajorLinesColor long varchar,in @ShowMinorLines long varchar,in @MinorLinesColor long varchar,in @ShowCursor long varchar,in @DefaultTab long varchar ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."VibrationChartPreferencesUpdate"(@SeriesColors,@AverageColors,@ShowMajorLines,@MajorLinesColor,@ShowMinorLines,@MinorLinesColor,@ShowCursor,@DefaultTab)
end