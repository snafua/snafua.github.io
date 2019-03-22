create procedure "_VTL"."VTLDocumentsSavedListInsertUpdate"( in @SavedList long varchar ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."VTLDocumentsSavedListInsertUpdate"(@SavedList)
end