create procedure "_SEAS"."LubeOilSampleVariableIncludeInMessage"( in @LabId char(8),in @SampleId char(9),in @VariableId integer,in @IncludeInMessage bit ) 
result( "SaveSucceeded" bit ) 
begin
  call "SEAS"."LubeOilSampleVariableIncludeInMessage"(@LabId,@SampleId,@VariableId,@IncludeInMessage)
end