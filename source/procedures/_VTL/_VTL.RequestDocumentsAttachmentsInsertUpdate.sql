create procedure "_VTL"."RequestDocumentsAttachmentsInsertUpdate"( 
  in @RequestDocumentsId integer,
  in @AttachmentName char(256),
  in @AttachmentData long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."RequestDocumentsAttachmentsInsertUpdate"(@RequestDocumentsId,@AttachmentName,@AttachmentData)
end