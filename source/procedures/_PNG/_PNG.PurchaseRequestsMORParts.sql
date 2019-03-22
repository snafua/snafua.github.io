create procedure "_PNG"."PurchaseRequestsMORParts"( 
  in @RowId char(256) ) 
result( 
  "ReqnNo" char(80),
  "PartNumber" char(40),
  "NavyStockNumber" char(25),
  "PartDescription" char(128),
  "QuantityOrdered" integer,
  "UnitCost" char(15),
  "Amount" char(15) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @WorkItemEquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  set @WorkItemEquipmentId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemEquipmentId');
  call "PNG"."PurchaseRequestsMORParts"(@VesselId,@WorkItemId,@PurchaseRequestId,@WorkItemEquipmentId)
end