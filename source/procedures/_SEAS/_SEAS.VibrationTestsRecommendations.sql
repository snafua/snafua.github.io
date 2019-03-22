create procedure "_SEAS"."VibrationTestsRecommendations"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "ManualRecommendationsId" integer,"RecommendationPriorityDesc" char(20),"StandardRecommendationId" integer,"StandardRecommendationText" char(80) ) 
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2009.09.28.003
*/
begin
  call "SEAS"."VibrationTestsRecommendations"(@VesselId,@EquipmentId,@TestResultId)
end