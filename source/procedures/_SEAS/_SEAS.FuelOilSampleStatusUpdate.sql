create procedure "_SEAS"."FuelOilSampleStatusUpdate"( 
  in @LabId char(8),
  in @SampleId char(9),
  in @NewStatus integer ) 
begin
  call "SEAS"."FuelOilSampleStatusUpdate"(@LabId,@SampleId,@NewStatus)
end