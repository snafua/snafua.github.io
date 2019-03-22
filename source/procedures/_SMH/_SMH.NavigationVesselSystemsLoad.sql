create procedure "_SMH"."NavigationVesselSystemsLoad"( 
  in @VesselId smallint ) 
result( 
  "VesselId" smallint,
  "SystemId" integer,
  "SystemDescription" char(50) ) 
begin
  call "SMH"."NavigationVesselSystemsLoad"(@VesselId)
end