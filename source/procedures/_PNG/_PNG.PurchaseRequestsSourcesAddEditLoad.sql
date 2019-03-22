create procedure "_PNG"."PurchaseRequestsSourcesAddEditLoad"( 
  in @SourceRowId char(256) ) 
result( 
  "VendorName" char(128),
  "CageCode" char(5),
  "AddressLineOne" char(128),
  "AddressLineTwo" char(128),
  "AddressLineThree" char(128),
  "City" char(128),
  "StateProvince" char(128),
  "ZipPostalCode" char(15),
  "Country" char(128),
  "PhoneNumber" char(25),
  "FaxNumber" char(25),
  "EmailAddress" char(128),
  "PointOfContact" char(128) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @PurchaseRequestVendorId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@SourceRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@SourceRowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@SourceRowId,'PurchaseRequestId');
  set @PurchaseRequestVendorId = "SWA"."KeyValuePairParse"(@SourceRowId,'PurchaseRequestVendorId');
  call "PNG"."PurchaseRequestsSourcesAddEditLoad"(@VesselId,@WorkItemId,@PurchaseRequestId,@PurchaseRequestVendorId)
end