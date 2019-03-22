create procedure "_SEAS"."LubeOilMessagingReplacementsSave"( in @ReplacementId integer,in @ReplacementValue char(1000) ) 
result( "Success" bit ) 
begin
  call "SEAS"."LubeOilMessagingReplacementsSave"(@ReplacementId,@ReplacementValue)
end