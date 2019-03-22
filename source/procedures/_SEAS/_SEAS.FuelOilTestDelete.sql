create procedure "_SEAS"."FuelOilTestDelete"( 
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilTestDelete"(@LabId,@SampleId)
end