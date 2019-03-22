create procedure "_SWA"."EquipmentReportEquipmentReports"()
result( 
  "HasChildren" bit,
  "IsSelected" bit,
  "EquipmentReportId" integer,
  "EquipmentReportName" char(1024) ) 
begin
  call "SWA"."EquipmentReportEquipmentReports"()
end