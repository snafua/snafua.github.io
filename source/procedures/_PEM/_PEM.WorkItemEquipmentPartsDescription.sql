create procedure "_PEM"."WorkItemEquipmentPartsDescription"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer ) 
result( 
  "EquipmentNumber" integer,
  "EquipmentDescription" char(128),
  "FlagEquipmentsPartList" integer ) 
begin
  call "PEM"."WorkItemEquipmentPartsDescription"(@VesselId,@ContractId,@WorkItemId)
end