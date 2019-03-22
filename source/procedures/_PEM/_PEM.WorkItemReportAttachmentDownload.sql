create procedure "_PEM"."WorkItemReportAttachmentDownload"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @AttachmentId integer ) 
result( 
  "AttachmentData" long binary ) 
begin
  call "PEM"."WorkItemReportAttachmentDownload"(@VesselId,@WorkItemId,@WorkItemReportId,@AttachmentId)
end