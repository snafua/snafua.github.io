create procedure "_SMH"."NavigationVesselsLoad"()
result( 
  "VesselId" smallint,
  "VesselName" char(80) ) 
begin
  call "SMH"."NavigationVesselsLoad"()
end