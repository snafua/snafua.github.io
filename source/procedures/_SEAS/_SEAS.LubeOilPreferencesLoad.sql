create procedure "_SEAS"."LubeOilPreferencesLoad"()
result( "SampleRangeType" char(255),"SampleRangeValue" char(255),"MajorGridLines" bit,"MinorGridLines" bit ) 
begin
  call "SEAS"."LubeOilPreferencesLoad"()
end