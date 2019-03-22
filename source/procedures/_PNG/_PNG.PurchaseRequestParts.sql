create procedure "_PNG"."PurchaseRequestParts"( 
  in @RowId char(1024) ) 
result( 
  "QtyRequired" integer,
  "OnOrder" integer,
  "ThisOrder" integer,
  "EquipmentDescription" char(128),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(20),
  "UnitOfMeasure" char(10),
  "UnitCost" numeric(15,2),
  "PartRowId" char(1024),
  "OrderBy" char(80) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestParts"(@VesselId,@WorkItemId,@PurchaseRequestId)
end