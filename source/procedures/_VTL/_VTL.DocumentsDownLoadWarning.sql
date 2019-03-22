create procedure "_VTL"."DocumentsDownLoadWarning"()
result( 
  "WarningMessage" long varchar ) 
begin
  call "VTL"."DocumentsDownLoadWarning"()
end