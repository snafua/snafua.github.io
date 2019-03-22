create procedure "_LIH"."WorkItemLibraryUsersSave"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."WorkItemLibraryUsersSave"(@RowIds)
end