create procedure "_TAR"."TransaltsAttachmentInsert"( 
  in @RowId char(1024),
  in @AttachmentName char(150),
  in @AttachmentDescription char(25) default null,
  in @AttachmentData long binary,
  in @Enclosure bit default 0,
  in @AttachmentType char(25) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsAttachmentInsert"(@RowId,@AttachmentName,@AttachmentDescription,@AttachmentData,1,0,@AttachmentType)
end