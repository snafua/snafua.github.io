create procedure "_SEAS"."LubeOilVariables"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @LabId integer,in @SampleId char(20) ) 
result( "VariableId" integer,"VariableLabel" char(20),"VariableAlarmLC" char(20),"VariableAlarmLA" char(20),"VariableAlarmB" char(20),"VariableAlarmHA" char(20),"VariableAlarmHC" char(20),"VariableAlarmLRC" char(20),"VariableAlarmHRC" char(20),"VariableCategory" char(50),"VariableUnits" char(10),"DontTrend" bit,"DisplaySequence" integer ) 
begin
  call "SEAS"."LubeOilVariables"(@VesselId,@EquipmentId,@TestId,@LabId,@SampleId)
end