create procedure "_VTL"."VTLVessels"( in @VesselName char(80) default null,in @VesselClassId integer default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselHullNumber" char(20),
  "VesselClass" char(20),
  "PreviousVesselName" char(80),
  "PreviousVesselHullNumber" char(20),
  "SAMMVessel" char(80),
  "VesselUIC" char(6),
  "ProgramManagerCode" char(4) ) 
begin
  call "VTL"."VTLVessels"(@VesselName,@VesselClassId)
end