create procedure "_SWA"."VesselClasses"( 
  in @ApplicationId integer default null ) 
result( 
  "VesselClass" char(30),
  "VesselClassId" integer ) 
begin
  call "SWA"."VesselClasses"(@ApplicationId)
end