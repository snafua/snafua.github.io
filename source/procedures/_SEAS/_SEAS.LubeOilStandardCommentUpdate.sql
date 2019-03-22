create procedure "_SEAS"."LubeOilStandardCommentUpdate"( in @CommentId integer,in @Comment long varchar,in @HotKey char(1) ) 
result( "CommentId" integer,"Success" bit ) 
begin
  call "SEAS"."LubeOilStandardCommentUpdate"(@CommentId,@Comment,@HotKey)
end