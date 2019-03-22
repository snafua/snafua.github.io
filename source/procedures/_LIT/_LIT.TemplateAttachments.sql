create procedure "_LIT"."TemplateAttachments"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(512),
  "AttachmentId" integer,
  "FileName" char(256),
  "Enclosure" bit,
  "Description" long varchar,
  "FileSize" integer,
  "EncodedFileName" char(512) ) 
begin
  call "LIT"."TemplateAttachments"(@RowId)
end