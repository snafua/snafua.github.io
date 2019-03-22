create procedure "_SEAS"."VibrationAnalysisRecommendations"( in @VesselId integer,in @EquipmentId integer ) 
result( "RecommendationId" integer,"Recommendation" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationAnalysisRecommendations"()
end