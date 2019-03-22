create procedure "_PAV"."WorkItemsEquipmentsAdd"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentNodeIds long varchar,
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."WorkItemsEquipmentsAdd"(@ModuleNodeId,@ModuleRowId,@EquipmentNodeIds,@ApplicationId)
end