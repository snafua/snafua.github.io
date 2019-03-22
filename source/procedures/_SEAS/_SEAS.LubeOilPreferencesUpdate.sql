create procedure "_SEAS"."LubeOilPreferencesUpdate"( in @Variables long varchar,in @SampleRangeType char(255),in @SampleRangeValue char(255),in @MajorGridLines bit,in @MinorGridLines bit ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilPreferencesUpdate"(@Variables,@SampleRangeType,@SampleRangeValue,@MajorGridLines,@MinorGridLines)
end