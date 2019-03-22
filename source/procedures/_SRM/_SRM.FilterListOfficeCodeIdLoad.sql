create procedure "_SRM"."FilterListOfficeCodeIdLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin call "SRM"."FilterListOfficeCodeIdLoad"(@GetDefault)
end