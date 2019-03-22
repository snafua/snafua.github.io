create procedure "_PAV"."WorkItemsEquipmentsRemove"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowIds long varchar,
  in @ApplicationId integer default null ) 
result( 
  "EquipmentRowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."WorkItemsEquipmentsRemove"(@ModuleNodeId,@ModuleRowId,@EquipmentRowIds,@ApplicationId)
end