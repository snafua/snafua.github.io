create procedure "_SMH"."VibrationTestConditions"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer ) 
result( 
  "TestConditions" long varchar ) 
begin
  call "SMH"."VibrationTestConditions"(@VesselId,@EquipmentId,@TestResultId)
end