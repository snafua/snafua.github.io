create procedure "_SEAS"."VibrationMidEditorAverageDataRangeOptions"()
result( "Text" char(10),"Id" smallint )  /* 17). //Get the range options for the range combo in Average Data tab
Service: SEAS_VibrationMidEditorAverageDataRangeOptions
Incoming variables: N/A
Outgoing variables: Text, Id */
begin
  call "SEAS"."VibrationMidEditorAverageDataRangeOptions"()
end