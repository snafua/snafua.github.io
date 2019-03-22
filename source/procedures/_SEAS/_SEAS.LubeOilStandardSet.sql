create procedure "_SEAS"."LubeOilStandardSet"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "VariableId" integer ) 
begin
  call "SEAS"."LubeOilStandardSet"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end