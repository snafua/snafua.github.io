create procedure "_SEAS"."FuelOilSaveAlarms"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9),
  in @Alarms long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilSaveAlarms"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId,@Alarms)
end