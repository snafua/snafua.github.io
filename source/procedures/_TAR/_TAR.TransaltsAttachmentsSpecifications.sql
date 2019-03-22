create procedure "_TAR"."TransaltsAttachmentsSpecifications"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "AttachmentId" integer,
  "AttachmentType" char(25),
  "AttachmentFileType" char(25),
  "AttachmentFileName" char(128),
  "AttachmentFileSize" char(20) ) 
begin
  select "RowId" as "RowId",
    "AttachmentId" as "AttachmentId",
    "AttachmentType" as "AttachmentType",
    "AttachmentFileType" as "AttachmentFileType",
    "AttachmentFileName" as "AttachmentFileName",
    "FileSize" as "AttachmentFileSize"
    from "_TAR"."TransaltsAttachments"(@RowId) where("AttachmentType" like '%spec%' or "AttachmentType" like '%Work%Item%') and "AttachmentFileType" like '%doc%'
end