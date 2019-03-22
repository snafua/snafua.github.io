create procedure "_PNG"."PurchaseRequestsSources"( 
  in @RowId char(256) ) 
result( 
  "VendorName" char(128),
  "CageCode" char(5),
  "VendorAddress" char(100),
  "PhoneNumber" char(25),
  "FaxNumber" char(25),
  "EmailAddress" char(128),
  "PointOfContact" char(128),
  "SourceRowId" char(256),
  "OrderBy" char(256) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsSources"(@VesselId,@WorkItemId,@PurchaseRequestId)
end