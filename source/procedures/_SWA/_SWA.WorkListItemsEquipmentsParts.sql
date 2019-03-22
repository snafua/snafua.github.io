create procedure "_SWA"."WorkListItemsEquipmentsParts"( 
  in @ModuleNodeId char(1024),
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024) default null,
  in @RowType char(20) default null,
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "PartDescription" char(80),
  "NavyStockNumber" char(20),
  "ManufacturerPartNumber" char(40),
  "UnitCost" numeric(15,2),
  "QuantityRequired" smallint,
  "QuantityOrdered" char(20), --SMALLINT,
  "PartStatus" char(20),
  "OrderBy" char(256),
  "CanEdit" bit,
  "CanRemove" bit ) 
begin
  call "SWA"."WorkListItemsEquipmentsParts"(@ModuleNodeId,@ModuleRowId,@EquipmentRowId,@RowType,@ApplicationId)
end