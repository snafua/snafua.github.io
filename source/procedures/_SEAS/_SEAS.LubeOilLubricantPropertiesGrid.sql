create procedure "_SEAS"."LubeOilLubricantPropertiesGrid"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "Variable" char(63),"Value" char(15) ) 
begin
  call "SEAS"."LubeOilLubricantPropertiesGrid"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end