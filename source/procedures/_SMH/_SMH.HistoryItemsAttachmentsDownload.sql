create function "_SMH"."HistoryItemsAttachmentsDownload"( 
  in @VesselId smallint,
  in @AttachmentId integer ) 
returns long binary
begin
  declare @Result long binary;
  set @Result = "SMH"."HistoryItemsAttachmentsDownload"(@VesselId,@AttachmentId);
  return(@Result)
end