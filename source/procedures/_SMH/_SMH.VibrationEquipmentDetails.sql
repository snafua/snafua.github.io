create procedure "_SMH"."VibrationEquipmentDetails"( 
  in @VesselId smallint,
  in @EquipmentId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "StandardEquipmentId" integer,
  "EquipmentDescription" char(80),
  "StandardEquipmentDescription" char(80),
  "TestConditions" long varchar ) 
begin
  call "SMH"."VibrationEquipmentDetails"(@VesselId,@EquipmentId)
end