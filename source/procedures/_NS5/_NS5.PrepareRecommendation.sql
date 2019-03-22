create procedure "_NS5"."PrepareRecommendation"( in @Recomendation char(80),in @Priority integer ) 
result( "ResultText" long varchar ) 
begin
  call "NS5"."PrepareRecommendation"(@Recomendation,@Priority)
end