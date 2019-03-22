create procedure "_TAE"."ExecutionAttachmentSave"( 
  in @RowId char(1024),
  in @DocumentType char(25),
  in @DocumentNumber char(50),
  in @DocumentTitle char(80),
  in @FileName char(128),
  in @AttachmentData long varchar,
  in @NotAvailable bit ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "AttachmentId" integer ) 
begin
  call "TAE"."ExecutionAttachmentSave"(@RowId,@DocumentType,@DocumentNumber,@DocumentTitle,@FileName,@AttachmentData,@NotAvailable)
end