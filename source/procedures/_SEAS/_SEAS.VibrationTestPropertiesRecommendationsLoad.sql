create procedure "_SEAS"."VibrationTestPropertiesRecommendationsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestResultId integer ) 
result( "Priority" char(20),"Recommendation" char(80) ) 
begin
  call "SEAS"."VibrationTestPropertiesRecommendationsLoad"(@VesselId,@EquipmentId,@TestResultId)
end