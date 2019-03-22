create procedure "_SEAS"."LubeOilSMPEditorSamplePointVariableDistribution"( in @VesselId smallint,in @EquipmentId integer,in @SamplePointId integer,in @VariableId integer ) 
result( "VariableTitle" char(50),"Value" char(10),"Count" integer ) 
begin
  call "SEAS"."LubeOilSMPEditorSamplePointVariableDistribution"(@VesselId,@EquipmentId,@SamplePointId,@VariableId)
end