create procedure "_TAR"."FilterListCategoryLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin
  call "TAR"."FilterListCategoryLoad"(@GetDefault)
end