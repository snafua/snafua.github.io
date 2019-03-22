create procedure "_SEAS"."FuelOilTestPriorityUpdate"( in @VesselId smallint,in @TestResultId integer,in @EquipmentId integer,in @LabId char(8),in @SampleId char(9),in @Priority char(20) ) 
result( "Success" bit,"ErrorMessage" char(255) ) 
begin
  call "SEAS"."FuelOilTestPriorityUpdate"(@VesselId,@TestResultId,@EquipmentId,@LabId,@SampleId,@Priority)
end