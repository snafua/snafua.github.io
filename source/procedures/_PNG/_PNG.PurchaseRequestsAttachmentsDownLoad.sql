create function "_PNG"."PurchaseRequestsAttachmentsDownLoad"( 
  in @AttachmentRowId char(256) ) 
returns long binary
begin
  declare @Result long binary;
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @AttachmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'PurchaseRequestId');
  set @AttachmentId = "SWA"."KeyValuePairParse"(@AttachmentRowId,'AttachmentId');
  set @Result = "PNG"."PurchaseRequestsAttachmentsDownLoad"(@VesselId,@WorkItemId,@PurchaseRequestId,@AttachmentId);
  return @Result
end