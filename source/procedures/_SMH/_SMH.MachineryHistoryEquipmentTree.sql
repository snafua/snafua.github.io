create procedure "_SMH"."MachineryHistoryEquipmentTree"( 
  in @VesselId smallint,
  in @EquipmentId integer ) 
result( 
  "HSC" varchar(12),
  "EquipmentTitle" char(80),
  "ParentHSC" varchar(12),
  "SelectedHSC" varchar(12) ) 
begin
  call "SMH"."MachineryHistoryEquipmentTree"(@VesselId,@EquipmentId)
end