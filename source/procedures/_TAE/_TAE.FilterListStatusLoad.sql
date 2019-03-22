create procedure --JLD B-15586 12.12.2017 Created Procedure
"_TAE"."FilterListStatusLoad"( 
  in @GetDefault bit default 0 ) 
result( "Filter" long varchar,"Label" char(256),"Filtered" bit ) 
begin
  call "TAR"."FilterListStatusLoad"(@GetDefault,"TAE"."ApplicationId"())
end