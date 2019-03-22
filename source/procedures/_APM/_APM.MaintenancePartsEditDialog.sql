create procedure --RJM
"_APM"."MaintenancePartsEditDialog"( 
  in @PartRowId long varchar default null ) 
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
  /*
2018-08-02 RJM E-04174
*/
  call "APM"."MaintenancePartsEditDialog"(@PartRowId)
end