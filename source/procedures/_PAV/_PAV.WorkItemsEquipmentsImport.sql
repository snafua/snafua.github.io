create procedure "_PAV"."WorkItemsEquipmentsImport"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowIds long varchar,
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."WorkItemsEquipmentsImport"(@ModuleNodeId,@ModuleRowId,@EquipmentRowIds,@ApplicationId)
end