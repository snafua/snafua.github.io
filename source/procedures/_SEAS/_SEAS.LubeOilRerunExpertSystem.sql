create procedure "_SEAS"."LubeOilRerunExpertSystem"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
begin
  call "SEAS"."LubeOilRerunExpertSystem"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end