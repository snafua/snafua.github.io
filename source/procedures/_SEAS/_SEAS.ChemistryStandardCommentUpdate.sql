create procedure "_SEAS"."ChemistryStandardCommentUpdate"( 
  in @CommentId integer,
  in @Comment long varchar,
  in @HotKey char(1) ) 
result( 
  "Success" bit,
  "CommentId" integer ) 
begin
  call "SEAS"."ChemistryStandardCommentUpdate"(@CommentId,@Comment,@HotKey)
end