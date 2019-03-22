create procedure "_SEAS"."LubeOilVariableValues"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VariableId" integer,"VariableName" char(80),"VariableUnits" char(10),"VariableValue" char(10),"TestDate" timestamp,"TestResultId" integer,"DontTrend" bit ) 
begin
  call "SEAS"."LubeOilVariableValues"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end