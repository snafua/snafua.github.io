create procedure "_SMH"."VibrationEquipmentComponents"( 
  in @VesselId smallint,
  in @EquipmentId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "StandardEquipmentId" integer,
  "ComponentDescription" char(250),
  "Orientation" char(40),
  "Locations" char(10) ) 
begin
  call "SMH"."VibrationEquipmentComponents"(@VesselId,@EquipmentId)
end