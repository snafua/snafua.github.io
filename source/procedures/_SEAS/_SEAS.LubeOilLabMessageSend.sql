create procedure "_SEAS"."LubeOilLabMessageSend"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9),in @MessageCC long varchar,in @MessageSubject long varchar,in @MessageText long varchar ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilLabMessageSend"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@MessageCC,@MessageSubject,
  @MessageText)
end