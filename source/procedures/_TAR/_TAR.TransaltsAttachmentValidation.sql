create procedure "_TAR"."TransaltsAttachmentValidation"( 
  in @AttachmentFileName char(255),
  in @AttachmentFileSize integer,
  in @Attachment long binary default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsAttachmentValidation"(@AttachmentFileName,@AttachmentFileSize,@Attachment)
end