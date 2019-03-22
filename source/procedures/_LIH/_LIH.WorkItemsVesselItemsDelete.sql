create procedure "_LIH"."WorkItemsVesselItemsDelete"( 
  in @RowIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."WorkItemsVesselItemsDelete"(@RowIds)
end