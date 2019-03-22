create procedure "_PNG"."PurchaseRequestsAttachments"( 
  in @RowId char(256) ) 
result( 
  "AttachmentFileName" char(128),
  "AttachmentLength" integer,
  "AttachmentRowId" char(256) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsAttachments"(@VesselId,@WorkItemId,@PurchaseRequestId)
end