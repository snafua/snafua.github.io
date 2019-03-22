create procedure "_TAE"."ExecutionComplete"( 
  in @RowId char(1024),
  in @CompletionTimestamp timestamp ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."ExecutionComplete"(@RowId,@CompletionTimestamp)
end