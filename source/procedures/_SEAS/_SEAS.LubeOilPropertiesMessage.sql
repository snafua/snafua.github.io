create procedure "_SEAS"."LubeOilPropertiesMessage"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "Message" long varchar,"Date" timestamp ) 
begin
  call "SEAS"."LubeOilPropertiesMessage"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end