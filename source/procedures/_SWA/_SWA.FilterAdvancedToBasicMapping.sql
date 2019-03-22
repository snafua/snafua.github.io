create procedure "_SWA"."FilterAdvancedToBasicMapping"()
result( 
  "ViewAttribute" char(128),
  "BasicFilterMapping" char(128) ) 
begin
  call "SWA"."FilterAdvancedToBasicMapping"()
end