create function "_SRM"."AttachmentDownload"( 
  in @RowId char(1024) ) 
returns long binary
begin
  return("SRM"."AttachmentDownload"(@RowId))
end