create procedure "_PEM"."WorkItemReportAttachmentInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @AttachmentFileName char(128),
  in @AttachmentFileSize integer,
  in @AttachmentFileData long binary ) 
result( 
  "AttachmentId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportAttachmentInsert"(@VesselId,@WorkItemId,@WorkItemReportId,@AttachmentFileName,@AttachmentFileSize,@AttachmentFileData)
end