create procedure "_SEAS"."FuelOilPropertiesMessage"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( 
  "Message" long varchar,
  "DATE" timestamp ) 
begin
  call "SEAS"."FuelOilPropertiesMessage"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end