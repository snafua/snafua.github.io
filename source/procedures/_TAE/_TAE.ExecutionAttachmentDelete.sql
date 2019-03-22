create procedure "_TAE"."ExecutionAttachmentDelete"( 
  in @RowId char(1024),
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."ExecutionAttachmentDelete"(@RowId,@AttachmentId)
end