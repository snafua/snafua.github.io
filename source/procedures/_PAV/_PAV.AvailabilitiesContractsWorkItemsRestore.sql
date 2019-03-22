create procedure "_PAV"."AvailabilitiesContractsWorkItemsRestore"( 
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."AvailabilitiesContractsWorkItemsRestore"(@RowId)
end