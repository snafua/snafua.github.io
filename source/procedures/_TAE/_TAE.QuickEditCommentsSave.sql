create procedure "_TAE"."QuickEditCommentsSave"( 
  in @RowId char(1024),
  in @Comments long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAE"."QuickEditCommentsSave"(@RowId,@Comments)
end