create procedure "_SEAS"."ExpertSystemRecommendationsLoad"( in @VesselId smallint,in @EquipmentId integer,in @TestId integer,
  in @Sort long varchar default null,
  in @ExpertSystemResultsId timestamp default null ) 
result( "ExpertSystemResultsId" timestamp,"RecommendationDescription" char(80),"PriorityDescription" char(20) ) 
begin
  call "SEAS"."ExpertSystemRecommendationsLoad"(@VesselId,@EquipmentId,@TestId,@Sort,@ExpertSystemResultsId)
end