create procedure "_SRM"."ServiceRequestsAttachmentValidation"( 
  in @AttachmentFileName char(255),
  in @AttachmentFileSize integer,
  in @Attachment long binary default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."ServiceRequestsAttachmentValidation"(
  @AttachmentFileName,
  @AttachmentFileSize,
  @Attachment)
end