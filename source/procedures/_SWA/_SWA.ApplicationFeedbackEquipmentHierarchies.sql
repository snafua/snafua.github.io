create procedure "_SWA"."ApplicationFeedbackEquipmentHierarchies"()
result( 
  "HierarchyId" integer,
  "HierarchyName" char(128) ) 
begin
  call "SWA"."ApplicationFeedbackEquipmentHierarchies"()
end