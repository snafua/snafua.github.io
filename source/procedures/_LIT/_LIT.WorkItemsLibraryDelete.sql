create procedure "_LIT"."WorkItemsLibraryDelete"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."WorkItemsLibraryDelete"(@RowIds)
end