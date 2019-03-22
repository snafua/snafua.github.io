create procedure "_LIT"."AttachmentInsert"( 
  in @RowId char(1024),
  in @AttachmentName char(256),
  in @AttachmentDescription long varchar,
  in @AttachmentData long varchar,
  in @Enclosure bit ) 
result( 
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  call "LIT"."AttachmentInsert"(@RowId,@AttachmentName,@AttachmentDescription,@AttachmentData,@Enclosure)
end