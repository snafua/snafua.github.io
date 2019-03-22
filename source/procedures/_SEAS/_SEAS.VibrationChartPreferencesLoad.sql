create procedure "_SEAS"."VibrationChartPreferencesLoad"()
result( "SeriesColors" long varchar,"AverageColors" long varchar,"ShowMajorLines" long varchar,"MajorLinesColor" long varchar,"ShowMinorLines" long varchar,"MinorLinesColor" long varchar,"ShowCursor" long varchar ) 
begin
  call "SEAS"."VibrationChartPreferencesLoad"()
end