create procedure "_PAV"."WorkItemAttachmentInsertUpdate"( 
  in @RowId char(256),
  in @AttachmentName char(256),
  in @AttachmentData long varchar,
  in @Enclosure bit,
  in @AttachmentDescription char(256) default null,
  in @AttachmentDateTime timestamp default null,
  in @AttachmentIsControlled bit default null,
  in @AttachmentIsEditable bit default null,
  in @AttachmentIsActive bit default null,
  in @AttachmentType char(20) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."WorkItemAttachmentInsertUpdate"(@RowId,@AttachmentName,@AttachmentData,@Enclosure,@AttachmentDescription,@AttachmentDateTime,
  @AttachmentIsControlled,@AttachmentIsEditable,@AttachmentIsActive,@AttachmentType)
end