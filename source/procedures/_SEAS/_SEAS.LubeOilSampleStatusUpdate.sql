create procedure "_SEAS"."LubeOilSampleStatusUpdate"( in @LabId char(8),in @SampleId char(9),in @NewStatus integer ) 
begin
  call "SEAS"."LubeOilSampleStatusUpdate"(@LabId,@SampleId,@NewStatus)
end