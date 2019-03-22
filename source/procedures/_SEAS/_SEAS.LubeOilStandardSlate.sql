create procedure "_SEAS"."LubeOilStandardSlate"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VariableId" integer ) 
begin
  call "SEAS"."LubeOilStandardSlate"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end