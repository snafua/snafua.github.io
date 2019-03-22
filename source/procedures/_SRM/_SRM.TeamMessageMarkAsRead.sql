create procedure "_SRM"."TeamMessageMarkAsRead"( 
  in @RowId char(1024) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SRM"."TeamMessageMarkAsRead"(@RowId)
end