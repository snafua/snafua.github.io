create procedure "_NS5"."GetComponentRecommendations"( in @ComponentTypeId integer ) 
result( "VibStandardRecommendationId" integer,"VibStandardRecommendationText" char(80),"VibStandardCompRecommendationId" integer,"VibStandardCompRecommendationClass" char(1),"LogicSymbolsM" long binary,"LogicSymbolsY" long binary,"LogicSymbolsN" long binary,"LogicSymbolsO" long binary,"LogicSymbolsL" long binary,"LogicSymbolsX" long binary,"Override" long binary ) 
begin
  call "NS5"."GetComponentRecommendations"(@ComponentTypeId)
end