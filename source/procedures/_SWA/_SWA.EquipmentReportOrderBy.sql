create procedure "_SWA"."EquipmentReportOrderBy"()
result( 
  "OrderByValue" char(128),
  "Filtered" bit ) 
begin
  call "SWA"."EquipmentReportOrderBy"()
end