create function "_LIT"."TemplateItemsFileDownload"( 
  in @RowId char(256),
  in @FileType char(15) ) 
returns long binary
begin
  declare @Content long binary;
  set @Content = "LIT"."TemplateItemsFileDownload"(@RowId,@FileType);
  return(@Content)
end