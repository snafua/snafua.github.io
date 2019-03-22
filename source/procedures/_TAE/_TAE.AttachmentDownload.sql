create function "_TAE"."AttachmentDownload"( 
  in @RowId char(1024) ) 
returns long binary
begin
  return("TAE"."AttachmentDownload"(@RowId))
end