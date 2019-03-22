create procedure "_PEM"."WorkItemModificationAttachmentInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @AttachmentFileName char(128),
  in @AttachmentData long binary ) 
result( 
  "AttachmentId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationAttachmentInsert"(@VesselId,@WorkItemId,@WorkItemModId,@AttachmentFileName,@AttachmentData)
end