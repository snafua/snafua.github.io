create procedure "_SEAS"."LubeOilLubricantDetails"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,in @LabId integer,in @SampleId char(20) ) 
result( "LubricantId" integer,"LubricantDescription" char(50) ) 
begin
  call "SEAS"."LubeOilLubricantDetails"(@VesselId,@EquipmentId,@TestId,@LabId,@SampleId)
end