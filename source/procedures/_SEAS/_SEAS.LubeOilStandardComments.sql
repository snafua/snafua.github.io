create procedure "_SEAS"."LubeOilStandardComments"( in @Filter long varchar,in @Sort long varchar ) 
result( "CommentId" integer,"Comments" long varchar,"Key" char(5) ) 
begin
  call "SEAS"."LubeOilStandardComments"(@Filter,@Sort)
end