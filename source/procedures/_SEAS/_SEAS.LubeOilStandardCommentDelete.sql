create procedure "_SEAS"."LubeOilStandardCommentDelete"( in @CommentId integer ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilStandardCommentDelete"(@CommentId)
end