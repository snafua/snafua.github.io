create procedure "_PEM"."WorkItemReportAttachments"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "AttachmentId" integer,
  "AttachmentFileName" char(128),
  "AttachmentFileSize" integer,
  "FlagAttachment" integer ) 
begin
  call "PEM"."WorkItemReportAttachments"(@VesselId,@WorkItemId,@WorkItemReportId)
end