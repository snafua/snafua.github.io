create procedure "_LIT"."MaintenancePartsEditDialog"( 
  in @PartRowId long varchar default null,
  in @ApplicationId integer default null ) 
result( 
  "PartRowId" long varchar,
  "EquipmentDescription" char(120),
  "AllowancePartsList" char(25),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(25),
  "SupplierName" char(80),
  "CageCode" char(5),
  "UnitCost" char(25),
  "QuantityRequired" char(25),
  "UnitofMeasure" char(10),
  "EquipmentId" integer,
  "CanEdit" bit,
  "EquipmentDescriptionCanEdit" bit,
  "AllowancePartsListCanEdit" bit,
  "PartDescriptionCanEdit" bit,
  "PartNumberCanEdit" bit,
  "NavyStockNumberCanEdit" bit,
  "SupplierNameCanEdit" bit,
  "CageCodeCanEdit" bit,
  "UnitCostCanEdit" bit,
  "QuantityRequiredCanEdit" bit,
  "UnitofMeasureCanEdit" bit,
  "EquipmentCanEdit" bit ) 
begin
  call "LIT"."MaintenancePartsEditDialog"(@PartRowId,@ApplicationId)
end