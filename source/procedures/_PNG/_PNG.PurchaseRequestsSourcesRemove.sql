create procedure "_PNG"."PurchaseRequestsSourcesRemove"( 
  in @SourceRowId char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @PurchaseRequestVendorId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@SourceRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@SourceRowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@SourceRowId,'PurchaseRequestId');
  set @PurchaseRequestVendorId = "SWA"."KeyValuePairParse"(@SourceRowId,'PurchaseRequestVendorId');
  call "PNG"."PurchaseRequestsSourcesRemove"(@VesselId,@WorkItemId,@PurchaseRequestId,@PurchaseRequestVendorId)
end