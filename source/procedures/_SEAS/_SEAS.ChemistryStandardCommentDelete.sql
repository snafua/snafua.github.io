create procedure "_SEAS"."ChemistryStandardCommentDelete"( 
  in @CommentId integer ) 
result( 
  "Success" bit ) 
begin
  call "SEAS"."ChemistryStandardCommentDelete"(@CommentId)
end