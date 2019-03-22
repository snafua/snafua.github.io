create function "_LIT"."AttachmentDownload"( 
  in @RowId char(512) ) 
returns long binary
begin
  return("LIT"."AttachmentDownload"(@RowId))
end