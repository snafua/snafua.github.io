create function "_PAV"."AvailabilitiesFileDownload"( 
  in @RowId char(256),
  in @FileId integer,
  in @FileType char(15) ) 
returns long binary
begin
  declare @Content long binary;
  set @Content = "PAV"."AvailabilitiesFileDownload"(@RowId,@FileId,@FileType);
  return(@Content)
end