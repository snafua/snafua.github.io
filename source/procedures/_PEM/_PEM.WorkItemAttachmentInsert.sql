create procedure "_PEM"."WorkItemAttachmentInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @AttachmentFileName char(128),
  in @AttachmentData long binary ) 
result( 
  "AttachmentId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemAttachmentInsert"(@VesselId,@WorkItemId,@AttachmentFileName,@AttachmentData)
end