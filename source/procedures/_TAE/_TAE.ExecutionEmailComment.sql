create procedure --E-04408 B-19899 B-20036
--RJM
"_TAE"."ExecutionEmailComment"( 
  in @RowId char(1024),
  in @EmailAddresses long varchar,
  in @EmailText long varchar ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-10-31 RJM E-04408 B-19899 B-20036
*/
  declare @UserId integer;
  set @UserId = "SWA"."UserId"();
  call "TAE"."ExecutionEmailComment"(@RowId,@EmailAddresses,@EmailText,@UserId)
end