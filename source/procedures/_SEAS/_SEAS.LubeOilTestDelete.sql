create procedure "_SEAS"."LubeOilTestDelete"( in @LabId char(8),in @SampleId char(9) ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilTestDelete"(@LabId,@SampleId)
end