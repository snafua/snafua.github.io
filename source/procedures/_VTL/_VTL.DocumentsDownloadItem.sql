create procedure "_VTL"."DocumentsDownloadItem"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "DocumentFilePath" long varchar,
  "DocumentFileName" char(255) ) 
begin
  call "VTL"."DocumentsDownloadItem"(@RowId)
end