create procedure "_PEM"."WorkItemReportAttachmentDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportAttachmentDelete"(@VesselId,@WorkItemId,@WorkItemReportId,@AttachmentId)
end