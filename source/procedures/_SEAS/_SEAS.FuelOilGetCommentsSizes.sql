create procedure "_SEAS"."FuelOilGetCommentsSizes"()
result( 
  "CommentsWidth" numeric(9,2),
  "CommentsHeight" numeric(9,2) ) 
begin
  call "SEAS"."FuelOilGetCommentsSizes"()
end