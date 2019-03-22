create procedure "_SEAS"."LubeOilSMPEditorSamplePointVariableAlarms"( in @StandardMeasurementPointId integer,in @VariableId integer ) 
result( "HighCritical" char(20),"HighAlarm" char(20),"Baseline" char(20),"LowAlarm" char(20),"LowCritical" char(20) ) 
begin
  call "SEAS"."LubeOilSMPEditorSamplePointVariableAlarms"(@StandardMeasurementPointId,@VariableId)
end