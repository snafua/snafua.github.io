create procedure "_SEAS"."VibrationTestResultStandardEquipmentDetailsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "StandardEquipmentId" integer,"EquipmentDescription" char(80),"TestConditions" long varchar ) 
begin
  call "SEAS"."VibrationTestResultStandardEquipmentDetailsLoad"(@VesselId,@EquipmentId,@TestResultId)
end