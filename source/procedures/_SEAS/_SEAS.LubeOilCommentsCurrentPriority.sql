create procedure "_SEAS"."LubeOilCommentsCurrentPriority"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @LabId char(8),in @SampleId char(9) ) 
result( "CurrentPriority" char(20) ) 
begin
  call "SEAS"."LubeOilCommentsCurrentPriority"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end