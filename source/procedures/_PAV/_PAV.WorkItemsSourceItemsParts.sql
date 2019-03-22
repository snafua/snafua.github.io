create procedure "_PAV"."WorkItemsSourceItemsParts"( 
  in @ModuleRowId char(1024),
  in @EquipmentRowId char(1024) default null,
  in @ApplicationId integer default null ) 
result( 
  "EquipmentRowId" char(1024),
  "EquipmentDescription" char(80),
  "NavyStockNumber" char(20),
  "PartNumber" char(40),
  "PartDescription" char(80),
  "QuantityRequired" integer,
  "CanImport" bit,
  "OrderBy" char(1024),
  "EncodedPartRowId" long varchar,
  "IsDisabled" bit ) 
begin
  call "PAV"."WorkItemsSourceItemsParts"(@ModuleRowId,@EquipmentRowId,@ApplicationId)
end