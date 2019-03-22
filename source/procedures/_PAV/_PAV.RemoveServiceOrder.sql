create procedure --2014-02-26 RJM Added Reason
"_PAV"."RemoveServiceOrder"( 
  in @RowId char(256),
  in @Reason long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PAV"."RemoveServiceOrder"(@RowId,@Reason)
end