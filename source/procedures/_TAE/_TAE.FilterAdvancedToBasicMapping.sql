create procedure "_TAE"."FilterAdvancedToBasicMapping"()
result( 
  "ViewAttribute" char(128),
  "BasicFilterMapping" char(128) ) 
begin
  call "TAE"."FilterAdvancedToBasicMapping"()
end