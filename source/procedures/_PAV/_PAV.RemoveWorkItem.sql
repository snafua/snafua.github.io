create procedure "_PAV"."RemoveWorkItem"( 
  in @RowId char(256),
  in @Reason long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."RemoveWorkItem"(@RowId)
end