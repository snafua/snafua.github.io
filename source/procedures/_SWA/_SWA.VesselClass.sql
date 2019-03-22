create procedure "_SWA"."VesselClass"( 
  in @VesselClassId integer ) 
result( 
  "VesselClassId" integer,
  "VesselClass" char(50) ) 
begin
  call "SWA"."VesselClass"(@VesselClassId)
end