create procedure "_LIT"."ImportAttachments"( 
  in @RowIdJSON long varchar ) 
result( 
  "AttachmentId" integer,
  "ItemNumber" char(32),
  "Title" char(50),
  "FileName" char(200),
  "AttachmentType" char(25) ) 
begin
  call "LIT"."ImportAttachments"(@RowIdJSON)
end