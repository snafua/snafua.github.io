create procedure "_PNG"."WorkItemsPartsOrderSubmit"( 
  in @RowId char(256) ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PNG"."WorkItemsPartsOrderSubmit"(@RowId)
end