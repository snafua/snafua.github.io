create procedure "_SPM"."VesselsList"()
result( 
  "VesselId" integer,
  "VesselName" char(128) ) 
begin
  call "SPM"."VesselsList"()
end