create procedure "_PEM"."WorkItemModificationAttachments"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "AttachmentId" integer,
  "AttachmentFileName" char(128),
  "AttachmentFileSize" integer,
  "AttachmentFileType" char(128),
  "FlagAttachment" integer ) 
begin
  call "PEM"."WorkItemModificationAttachments"(@VesselId,@WorkItemId,@WorkItemModId)
end