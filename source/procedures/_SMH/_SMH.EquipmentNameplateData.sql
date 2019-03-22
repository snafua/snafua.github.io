create procedure "_SMH"."EquipmentNameplateData"( 
  in @VesselId integer,
  in @EquipmentId integer ) 
result( 
  "Nameplate" long varchar ) 
begin
  call "SMH"."EquipmentNameplateData"(@VesselId,@EquipmentId)
end