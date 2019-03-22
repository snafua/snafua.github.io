create procedure "_PNG"."WorkItemsPartsOrderEditDialog"( 
  in @PartRowId long varchar ) 
result( 
  "PartRowId" long varchar,
  "EquipmentDescription" char(120),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(25),
  "SupplierName" char(80),
  "CageCode" char(25),
  "UnitCost" char(25),
  "Quantity" char(25),
  "DateRequired" char(25),
  "SourceOfSupply" char(1024),
  "WorkItemEquipmentId" integer,
  "CanEdit" bit,
  "EquipmentDescriptionCanEdit" bit,
  "PartDescriptionCanEdit" bit,
  "PartNumberCanEdit" bit,
  "NavyStockNumberCanEdit" bit,
  "SupplierNameCanEdit" bit,
  "CageCodeCanEdit" bit,
  "UnitCostCanEdit" bit,
  "QuantityCanEdit" bit,
  "DateRequiredCanEdit" bit,
  "SourceOfSupplyCanEdit" bit ) 
begin
  call "PNG"."WorkItemsPartsOrderEditDialog"(@PartRowId)
end