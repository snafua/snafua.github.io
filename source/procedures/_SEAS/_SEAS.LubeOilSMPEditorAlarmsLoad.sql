create procedure "_SEAS"."LubeOilSMPEditorAlarmsLoad"( in @StandardMeasurementPointId integer ) 
result( "VariableId" integer,"VariableName" char(50),"HighCritical" char(20),"HighAlarm" char(20),"Baseline" char(20),"LowAlarm" char(20),"LowCritical" char(20),"PositiveROC" char(20),"NegativeROC" char(20),"Sensitivity" char(20),"ManualHighCritical" char(20),"ManualHighAlarm" char(20),"ManualBaseline" char(20),"ManualLowAlarm" char(20),"ManualLowCritical" char(20),"ManualPositiveROC" char(20),"ManualNegativeROC" char(20),"ManualSensitivity" char(20),"TestSlateIds" long varchar ) 
begin
  call "SEAS"."LubeOilSMPEditorAlarmsLoad"(@StandardMeasurementPointId)
end