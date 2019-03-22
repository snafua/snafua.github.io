create procedure "_SEAS"."ChemistryStandardComments"( 
  in @Sort long varchar,
  in @Filter long varchar ) 
result( 
  "CommentId" smallint,
  "Comments" long varchar,
  "Key" char(1) ) 
begin
  call "SEAS"."ChemistryStandardComments"(@Sort,@Filter)
end