create procedure "_SEAS"."VibrationMidEditorFaultFrequenciesGetFaultName"( in @FaultCode char(3) ) 
result( "FaultNameId" integer,"FaultName" char(80) ) 
begin
  call "SEAS"."VibrationMidEditorFaultFrequenciesGetFaultName"(@FaultCode)
end