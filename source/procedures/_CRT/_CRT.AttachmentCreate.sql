create procedure "_CRT"."AttachmentCreate"( 
  in @Attachment long binary,
  in @AttachmentTitle char(128) ) 
result( 
  "AttachmentRowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "CRT"."AttachmentCreate"(@Attachment,@AttachmentTitle)
end