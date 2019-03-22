create procedure "_VTL"."RequestDocumentsWarning"()
result( 
  "WarningMessage" long varchar ) 
begin
  call "VTL"."RequestDocumentsWarning"()
end