create procedure "_SRM"."FilterListStatusLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin call "SRM"."FilterListStatusLoad"(@GetDefault)
end