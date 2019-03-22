create procedure "_SEAS"."FuelOilStandardCommentDelete"( 
  in @CommentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilStandardCommentDelete"(@CommentId)
end