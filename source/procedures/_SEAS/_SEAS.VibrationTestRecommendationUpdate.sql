create function "_SEAS"."VibrationTestRecommendationUpdate"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer,in @Priority char(20),in @ManualRecommendationId integer,in @ManualRecommendation char(80) ) 
returns integer
begin
  declare @Result integer;
  set @Result = "SEAS"."VibrationTestRecommendationUpdate"(@VesselId,@EquipmentId,@TestResultId,@Priority,@ManualRecommendationId,@ManualRecommendation);
  return(@Result)
end