create procedure "_VTL"."RequestDocumentAttachmentUpdateStatus"( 
  in @AttachmentId integer,
  in @RequestDocumentsId integer,
  in @RecordActive bit default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."RequestDocumentAttachmentUpdateStatus"(@AttachmentId,@RequestDocumentsId,@RecordActive)
end