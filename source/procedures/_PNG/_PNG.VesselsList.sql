create procedure "_PNG"."VesselsList"()
result( 
  "VesselId" integer,
  "VesselName" char(128) ) 
begin
  call "PNG"."VesselsList"()
end