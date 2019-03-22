create procedure "_VTL"."DocumentsDownloadItemRemove"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "VTL"."DocumentsDownloadItemRemove"(@RowId)
end