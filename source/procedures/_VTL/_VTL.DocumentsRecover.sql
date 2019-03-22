create procedure "_VTL"."DocumentsRecover"( in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."P_VTLDocumentsRecover"(@RowId)
end