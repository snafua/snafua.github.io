create function "_TAR"."AttachmentDownload"( 
  in @RowId char(1024) ) 
returns long binary
begin
  return("TAR"."AttachmentDownload"(@RowId))
end