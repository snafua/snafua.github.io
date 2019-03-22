create procedure "_SWA"."WorkListItemsEquipmentsMaintenance"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024) default null,
  in @RowType char(20) default null,
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "EquipmentDescription" char(80),
  "MaintenanceCode" char(4),
  "MaintenanceProcedureTitle" char(50),
  "LastCompleteDate" date,
  "NextDueDate" date,
  "OrderBy" char(256),
  "CanRemove" bit ) 
begin
  call "SWA"."WorkListItemsEquipmentsMaintenance"(@ModuleNodeId,@ModuleRowId,@EquipmentRowId,@RowType,@ApplicationId)
end