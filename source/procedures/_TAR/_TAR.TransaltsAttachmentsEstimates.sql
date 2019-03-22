create procedure "_TAR"."TransaltsAttachmentsEstimates"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "AttachmentId" integer,
  "AttachmentType" char(25),
  "AttachmentFileType" char(25),
  "AttachmentFileName" char(128),
  "AttachmentFileSize" char(20) ) 
begin
  call "TAR"."TransaltsAttachmentsEstimates"(@RowId)
end