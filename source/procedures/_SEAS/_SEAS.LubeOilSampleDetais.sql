create procedure "_SEAS"."LubeOilSampleDetais"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "DontConfirmComplete" bit ) 
begin
  call "SEAS"."LubeOilSampleDetails"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end