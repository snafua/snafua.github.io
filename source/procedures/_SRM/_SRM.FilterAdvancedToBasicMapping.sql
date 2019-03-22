create procedure "_SRM"."FilterAdvancedToBasicMapping"()
result( "ViewAttribute" char(128),"BasicFilterMapping" char(128) ) 
begin
  call "SRM"."FilterAdvancedToBasicMapping"()
end