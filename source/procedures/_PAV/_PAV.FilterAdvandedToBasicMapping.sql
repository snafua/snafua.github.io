create procedure "_PAV"."FilterAdvandedToBasicMapping"()
result( "ViewAttribute" char(128),"BasicFilterMapping" char(128) ) 
begin
  call "PAV"."FilterAdvandedToBasicMapping"()
end