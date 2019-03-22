create procedure "_SEAS"."VibrationMidEditorAverageDataCurrentRangeAndLocation"( in @StandardMachineId integer ) 
result( "RangeSelected" smallint,"LocationSelected" smallint ) 
/* 29). //Gets the initial range and location for the average data tab
Service: SEAS_VibrationMidEditorAverageDataCurrentRangeAndLocation
Incoming variables: Mid
Outgoing variables: RangeSelected, LocationSelected
Note: These are the ids */
begin
  call "SEAS"."VibrationMidEditorAverageDataCurrentRangeAndLocation"(@StandardMachineId)
end