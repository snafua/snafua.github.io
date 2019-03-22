create procedure "_SWA"."WorkListItemsEquipmentsPermissions"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "CanAddEquipment" bit,
  "CanAddMaterials" bit,
  "CanAddParts" bit,
  "CanAddCosts" bit,
  "CanAddMaintenance" bit ) 
begin
  call "SWA"."WorkListItemsEquipmentsPermissions"(@NodeId,@RowId,@ApplicationId)
end