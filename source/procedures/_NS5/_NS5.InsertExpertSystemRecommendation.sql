create procedure "_NS5"."InsertExpertSystemRecommendation"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,in @ExpertSystemTimeStamp char(26),in @RecommendationIndex integer,in @VibStandardRecommendation char(80),in @VibRecommendationPriorityIndex integer,in @VibStandardCompId char(10) ) 
begin
  -- {JJD} NS5DB.dll Buffer Error Fix
  set @_RecCount = @_RecCount+1;
  if @_RecCount >= @_RecStart then
    set @_RecIndex = @_RecIndex+1;
    set @RecommendationIndex = @_RecIndex;
    if "TRIM"(@VibStandardCompId) = '' then
      set @VibStandardCompId = null
    end if;
    call "NS5"."InsertExpertSystemRecommendation"(@VesselId,@EquipmentId,@TestResultId,@ExpertSystemTimeStamp,@RecommendationIndex,@VibStandardRecommendation,@VibRecommendationPriorityIndex,@VibStandardCompId)
  end if
end