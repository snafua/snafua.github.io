create procedure "_VTL"."DocumentsDownloadItemAdd"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."DocumentsDownloadItemAdd"(@RowId)
end