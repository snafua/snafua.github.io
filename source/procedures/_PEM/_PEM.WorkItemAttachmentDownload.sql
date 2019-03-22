create procedure "_PEM"."WorkItemAttachmentDownload"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @AttachmentId integer ) 
result( 
  "AttachmentData" long binary ) 
begin
  call "PEM"."WorkItemAttachmentDownload"(@VesselId,@WorkItemId,@AttachmentId)
end