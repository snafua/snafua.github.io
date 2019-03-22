create procedure "_PNG"."WorkItemsPartsEditDialog"( 
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
  "CageCode" char(25),
  "UnitCost" char(25),
  "QuantityRequired" char(25),
  "UnitofMeasure" char(10),
  "WorkItemEquipmentId" integer,
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
  call "PNG"."WorkItemsPartsEditDialog"(@PartRowId,@ApplicationId)
end