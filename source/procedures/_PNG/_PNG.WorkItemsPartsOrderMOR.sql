create procedure "_PNG"."WorkItemsPartsOrderMOR"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(256),
  "VesselId" integer,
  "WorkItemId" integer,
  "PurchaseRequestId" integer,
  "WorkItemEquipmentId" integer,
  "ReportId" integer ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."WorkItemsPartsOrderMOR"(@VesselId,@WorkItemId,@PurchaseRequestId)
end