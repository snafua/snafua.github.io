create procedure "_LIT"."WorkItemsLibraryEquipmentAssign"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."WorkItemsLibraryEquipmentAssign"(@RowIds)
end