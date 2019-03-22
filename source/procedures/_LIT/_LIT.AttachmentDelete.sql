create procedure "_LIT"."AttachmentDelete"( 
  in @RowId char(1024),
  in @AttachmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  call "LIT"."AttachmentDelete"(@RowId,@AttachmentId)
end