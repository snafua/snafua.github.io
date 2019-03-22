create procedure "_SEAS"."LubeOilCancelFerrogram"( in @LabId char(8),in @SampleId char(9) ) 
result( "Success" bit,"Error" long varchar ) 
begin
  call "SEAS"."LubeOilCancelFerrogram"(@LabId,@SampleId)
end