create procedure "_PAV"."WorkItemsEquipmentsEdit"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024),
  in @AllowancePartsList char(25),
  in @ApplicationId integer default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."WorkItemsEquipmentsEdit"(@ModuleNodeId,@ModuleRowId,@EquipmentRowId,@AllowancePartsList,@ApplicationId)
end