create procedure "_TAR"."FilterAdvancedToBasicMapping"()
result( "ViewAttribute" char(128),"BasicFilterMapping" char(128) ) 
begin
  call "TAR"."FilterAdvancedToBasicMapping"()
end