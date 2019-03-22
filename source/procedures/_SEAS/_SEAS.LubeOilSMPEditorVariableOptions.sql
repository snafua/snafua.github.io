create procedure "_SEAS"."LubeOilSMPEditorVariableOptions"( in @StandardMeasurementPointId integer,in @TestSlateId integer ) 
result( "VariableId" integer,"Variable" char(50),"Sensitivity" char(20),"LowCritical" char(20),"LowAlarm" char(20),"HighAlarm" char(20),"HighCritical" char(20),"NegativeROC" char(20),"PositiveROC" char(20) ) 
begin
  call "SEAS"."LubeOilSMPEditorVariableOptions"(@StandardMeasurementPointId,@TestSlateId)
end