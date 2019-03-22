create procedure "_SEAS"."FuelOilCustomVariables"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @LabId char(8),
  in @SampleId char(9) ) 
result( "VariableId" integer,"VariableCategory" char(50),"VariableLabel" char(20),"IsCustom" bit ) 
begin
  call "SEAS"."FuelOilCustomVariables"(@VesselId,@EquipmentId,@TestResultId,@LabId,@SampleId)
end