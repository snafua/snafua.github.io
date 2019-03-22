create procedure "_VTL"."DocumentsDownloadListReset"()
result( 
  "Success" bit,"ErrorMessage" long varchar ) 
begin call "VTL"."DocumentsDownloadListReset"()
end