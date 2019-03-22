create procedure --JLD
"_ACM"."PartsSelectedGrid"( 
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
  "UnitOfMeasure" char(10),
  "OnHand" integer,
  "CageCode" char(10),
  "UnitCost" decimal(15,2),
  "PartId" integer,
  "IsMaterial" bit,
  "OrderBy" char(1024) ) 
begin
  /*
2018-09-28 JLD E-04166 B-19397
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "ACM"."PartsSelectedGrid"(@VesselId,@EquipmentId,@WorkRequestId)
end