create procedure "_SEAS"."FuelOilPreferencesUpdate"( 
  in @Variables long varchar,
  in @SampleRangeType char(255),
  in @SampleRangeValue char(255),
  in @MajorGridLines bit,
  in @MinorGridLines bit ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilPreferencesUpdate"(@Variables,@SampleRangeType,@SampleRangeValue,@MajorGridLines,@MinorGridLines)
end