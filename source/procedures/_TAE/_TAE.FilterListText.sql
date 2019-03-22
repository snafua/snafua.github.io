create procedure --JLD B-15586 12.12.2017 Created Procedure
"_TAE"."FilterListText"( 
  in @GetDefault bit default 0 ) 
result( "AllText" long varchar ) 
begin
  if @GetDefault is null then
    set @GetDefault = 0
  end if;
  call "SWA"."FilterListText"("TAE"."ApplicationId"(),@GetDefault)
end