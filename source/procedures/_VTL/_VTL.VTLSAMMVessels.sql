create procedure "_VTL"."VTLSAMMVessels"( in @VesselName char(80) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  call "VTL"."VTLSAMMVessels"(@VesselName)
end