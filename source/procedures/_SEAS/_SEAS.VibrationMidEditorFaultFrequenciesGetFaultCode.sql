create procedure "_SEAS"."VibrationMidEditorFaultFrequenciesGetFaultCode"( in @FaultId integer ) 
result( "FaultCode" char(3) ) 
begin
  call "SEAS"."VibrationMidEditorFaultFrequenciesGetFaultCode"(@FaultId)
end