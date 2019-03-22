create procedure "_SWA"."EquipmentHierarchies"()
result( 
  "HierarchyType" char(256),
  "HierarchyDescription" char(80) ) 
begin
  call "SWA"."EquipmentHierarchies"()
end