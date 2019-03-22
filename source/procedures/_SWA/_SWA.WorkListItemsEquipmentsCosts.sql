create procedure "_SWA"."WorkListItemsEquipmentsCosts"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024) default null,
  in @RowType char(20) default null,
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "EquipmentDescription" char(80),
  "ConsumableDollars" numeric(15,2),
  "LaborDollars" numeric(15,2),
  "PartsDollars" numeric(15,2),
  "TotalDollars" numeric(15,2),
  "PercentageOfRepair" numeric(15,2),
  "OrderBy" char(256),
  "CanEdit" bit,
  "CanRemove" bit ) 
begin
  call "SWA"."WorkListItemsEquipmentsCosts"(@ModuleNodeId,@ModuleRowId,@EquipmentRowId,@RowType,@ApplicationId)
end