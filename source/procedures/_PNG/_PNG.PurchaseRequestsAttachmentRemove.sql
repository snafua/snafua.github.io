create procedure "_PNG"."PurchaseRequestsAttachmentRemove"( 
  in @AttachmentRowId char(256) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'PurchaseRequestId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  call "PNG"."PurchaseRequestsAttachmentRemove"(@VesselId,@WorkItemId,@PurchaseRequestId,@AttachmentId)
end