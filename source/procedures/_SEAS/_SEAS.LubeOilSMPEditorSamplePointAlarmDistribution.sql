create procedure "_SEAS"."LubeOilSMPEditorSamplePointAlarmDistribution"( in @VariableId integer,in @SamplePointIds long varchar ) 
result( "VariableTitle" char(50),"Value" char(10),"Count" integer ) 
begin
  call "SEAS"."LubeOilSMPEditorSamplePointAlarmDistribution"(@VariableId,@SamplePointIds)
end