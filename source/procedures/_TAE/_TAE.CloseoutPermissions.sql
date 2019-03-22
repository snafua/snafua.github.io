create procedure "_TAE"."CloseoutPermissions"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "CanEditAttachment" bit ) 
begin
  call "TAE"."CloseoutPermissions"(@RowId)
end