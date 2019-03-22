create procedure "_PAV"."WorkItemsPartsSelectedGrid"( 
  in @RowId char(1024) ) 
result( 
  "PartRowId" char(1024),
  "EquipmentRowId" char(1024),
  "EquipmentDescription" char(120),
  "AllowancePartsList" char(25),
  "QuantityRequired" integer,
  "PartNumber" char(40),
  "PartDescription" char(80),
  "NavyStockNumber" char(20),
  "SupplierName" char(80),
  "UOM" char(25),
  "OnHand" integer,
  "CageCode" char(10),
  "UnitCost" decimal(15,2),
  "IsMaterial" bit,
  "WorkItemEquipmentId" integer,
  "WorkItemPartId" integer,
  "RowType" char(25),
  "OrderBy" char(1024) ) 
begin
  call "PAV"."WorkItemsPartsSelectedGrid"(@RowId)
end