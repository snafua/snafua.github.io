create procedure "_TAR"."FilterListStatusLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin
  call "TAR"."FilterListStatusLoad"(@GetDefault)
end