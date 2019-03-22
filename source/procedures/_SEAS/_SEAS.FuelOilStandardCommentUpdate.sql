create procedure "_SEAS"."FuelOilStandardCommentUpdate"( 
  in @CommentId integer,
  in @Comment long varchar,
  in @HotKey char(1) ) 
result( 
  "CommentId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SEAS"."FuelOilStandardCommentUpdate"(@CommentId,@Comment,@HotKey)
end