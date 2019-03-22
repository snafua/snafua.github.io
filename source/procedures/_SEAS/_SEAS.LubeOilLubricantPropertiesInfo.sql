create procedure "_SEAS"."LubeOilLubricantPropertiesInfo"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "LubricantName" char(50),"LubricantManufacturer" char(50),"LubricantType" char(10),"Use" char(50),"Description" char(50) ) 
begin
  call "SEAS"."LubeOilLubricantPropertiesInfo"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end