create procedure "_SEAS"."FuelOilStandardSlate"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( "VariableId" integer ) 
begin
  call "SEAS"."FuelOilStandardSlate"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end