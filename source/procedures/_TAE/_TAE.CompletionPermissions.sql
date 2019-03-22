create procedure --B-20414 E-04408
--RJM
"_TAE"."CompletionPermissions"( 
  in @RowId char(1024) default null ) 
result( 
  "TransaltItemPermissions" integer ) 
begin
  /*
2018-12-18 RJM Created B-20414  E-04408
*/
  call "TAE"."CompletionPermissions"()
end