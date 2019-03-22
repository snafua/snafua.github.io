create procedure "_SEAS"."FuelOilStandardComments"( 
  in @Filter long varchar,
  in @Sort long varchar ) 
result( 
  "CommentId" integer,
  "Comments" long varchar,
  "KEY" char(5) ) 
begin
  call "SEAS"."FuelOilStandardComments"(@Filter,@Sort)
end