create procedure "_TAE"."ExecutionWorkItemRemove"( 
  in @RowId char(1024),
  in @WorkItemIds long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."ExecutionWorkItemRemove"(@RowId,@WorkItemIds)
end