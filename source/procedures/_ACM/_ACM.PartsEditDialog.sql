create procedure --JLD
"_ACM"."PartsEditDialog"( 
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
  "UnitCost" numeric(15,2),
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
2018-08-14 RJM
2018-09-27 JLD E-04166 B-19397
*/
  call "ACM"."PartsEditDialog"(@PartRowId)
end