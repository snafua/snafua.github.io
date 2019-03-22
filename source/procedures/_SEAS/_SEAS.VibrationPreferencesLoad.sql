create procedure "_SEAS"."VibrationPreferencesLoad"()
result( "SeriesColors" long varchar,"AverageColors" long varchar,"ShowMajorLines" long varchar,"MajorLinesColor" long varchar,"ShowMinorLines" long varchar,"MinorLinesColor" long varchar,"ShowCursor" long varchar,"DefaultTab" long varchar ) 
begin
  call "SEAS"."VibrationPreferencesLoad"()
end