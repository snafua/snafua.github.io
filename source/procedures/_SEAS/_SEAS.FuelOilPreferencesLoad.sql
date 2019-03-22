create procedure "_SEAS"."FuelOilPreferencesLoad"()
result( 
  "SampleRangeType" char(255),
  "SampleRangeValue" char(255),
  "MajorGridLines" bit,
  "MinorGridLines" bit ) 
begin
  call "SEAS"."FuelOilPreferencesLoad"()
end