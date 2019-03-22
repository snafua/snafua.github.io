create procedure "_TAR"."TransaltsAttachmentSave"( in @RowId char(1024),
  in @AttachmentType char(25) default null,
  in @TransaltAttachIsActive bit default 1,
  in @AttachmentFileName char(128),
  in @Attachment long binary ) 
result( "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsAttachmentSave"(@RowId,@AttachmentType,@TransaltAttachIsActive,@AttachmentFileName,@Attachment)
end