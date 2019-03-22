create procedure "_PNG"."PurchaseRequestsEquipments"( 
  in @OrderRowId char(256) ) 
result( 
  "EquipmentDescription" char(120),
  "HSC" char(12),
  "AllowancePartsList" char(25),
  "Cage" char(10),
  "Manufacturer" char(80),
  "Model" char(32),
  "SerialNumber" char(15),
  "OrderBy" char(80) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@OrderRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@OrderRowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@OrderRowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsEquipments"(@VesselId,@WorkItemId,@PurchaseRequestId)
end