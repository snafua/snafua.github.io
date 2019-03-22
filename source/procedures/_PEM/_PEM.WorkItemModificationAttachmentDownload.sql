create procedure "_PEM"."WorkItemModificationAttachmentDownload"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @AttachmentId integer ) 
result( 
  "AttachmentData" long binary ) 
begin
  call "PEM"."WorkItemModificationAttachmentDownload"(@VesselId,@WorkItemId,@WorkItemModId,@AttachmentId)
end