create procedure "_SRM"."FilterListTypeLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin call "SRM"."FilterListTypeLoad"(@GetDefault)
end