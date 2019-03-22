create procedure "_SWA"."EquipmentReportEquipmentHierarchies"()
result( 
  "HierarchyType" char(128),
  "HierarchyTypeDisplayedAs" char(128) ) 
begin
  call "SWA"."EquipmentReportEquipmentHierarchies"()
end