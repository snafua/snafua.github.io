create procedure "_SEAS"."FuelOilSampleVariableIncludeInMessage"( 
  in @LabId char(8),
  in @SampleId char(9),
  in @VariableId integer,
  in @IncludeInMessage bit ) 
result( 
  "SaveSucceeded" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSampleVariableIncludeInMessage"(@LabId,@SampleId,@VariableId,@IncludeInMessage)
end