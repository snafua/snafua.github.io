create procedure --JLD
"_SWA"."VesselEquipmentLubeOilLabelDetails"( 
  in @VesselId char(1024) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "Reprint" bit,
  "Scheduled" bit,
  "Unscheduled" bit,
  "VesselPermissions" integer,
  "ReprintPermissions" integer,
  "ScheduledPermissions" integer,
  "UnscheduledPermissions" integer,
  "LubeOilReportId" integer,
  "LubeOilReportType" char(3),
  "PrintMultipleLabels" bit,
  "ExportGrid" bit,
  "PrintMultipleLabelsPermissions" integer,
  "ExportGridPermissions" integer,
  "ExportGridId" integer,
  "ApplicationId" integer ) 
begin
  /*
2018-01-08 RJM
2018-05-10 JLD E-03757 B-17960 Added PrintMultipleLabelsPermissions, ExportGridPermissions
2018-05-11 JLD E-03757 B-17960 Added ExportGridId
*/
  declare @VesselIdInt integer;
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselIdInt = @VesselId
  else
    set @VesselIdInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  call "SWA"."VesselEquipmentLubeOilLabelDetails"(@VesselIdInt)
end