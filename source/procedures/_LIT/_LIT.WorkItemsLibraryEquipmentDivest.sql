create procedure "_LIT"."WorkItemsLibraryEquipmentDivest"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."WorkItemsLibraryEquipmentDivest"(@RowIds)
end