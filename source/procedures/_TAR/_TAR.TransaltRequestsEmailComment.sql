create procedure "_TAR"."TransaltRequestsEmailComment"( in @RowId char(1024),in @EmailAdresses long varchar,in @EmailText long varchar ) 
result( "RowId" char(1024),"Success" bit,"ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltRequestsEmailComment"(@RowId,
  @EmailAdresses,
  @EmailText)
end