create procedure "_SEAS"."LubeOilMessagingReplacementsList"( in @Sort long varchar ) 
result( "ReplacementId" integer,"ReplacementName" char(50),"ReplacementValue" char(1000) ) 
begin
  call "SEAS"."LubeOilMessagingReplacementsList"(@Sort)
end