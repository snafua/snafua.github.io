create procedure "_SEAS"."LubeOilSampleDetails"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "DontConfirmComplete" bit,"IsLocked" bit,"AwaitingFerrogram" bit,"HasFerrogram" bit ) 
begin
  call "SEAS"."LubeOilSampleDetails"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end