create procedure "_SWA"."EquipmentReportConfiguration"()
result( 
  "VesselIds" long varchar,
  "VesselName" char(80),
  "ReportIds" char(1024),
  "ReportDescription" char(128),
  "ConfigurationScript" long varchar ) 
begin
  call "SWA"."EquipmentReportConfiguration"()
end