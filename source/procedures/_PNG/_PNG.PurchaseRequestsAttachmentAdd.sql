create procedure "_PNG"."PurchaseRequestsAttachmentAdd"( 
  in @RowId char(256),
  in @AttachmentFileName char(128),
  in @Attachment long binary ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsAttachmentAdd"(@VesselId,@WorkItemId,@PurchaseRequestId,@AttachmentFileName,@Attachment)
end