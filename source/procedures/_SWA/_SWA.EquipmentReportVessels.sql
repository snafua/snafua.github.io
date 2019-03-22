create procedure "_SWA"."EquipmentReportVessels"()
result( 
  "ProgramManagerCode" char(32),
  "VesselClass" char(32),
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  call "SWA"."EquipmentReportVessels"()
end