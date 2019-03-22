create procedure "_VTL"."FilterAdvancedToBasicMapping"()
result( "ViewAttribute" char(128),"BasicFilterMapping" char(128) ) 
begin
  call "VTL"."FilterAdvancedToBasicMapping"()
end