create procedure "_SWA"."EquipmentReportEquipmentSelected"( 
  in @VesselIds long varchar,
  in @HierarchyType char(50) default null,
  in @ParentNodeId char(1024) default null,
  in @SearchText long varchar default null,
  in @SelectedNodeIds long varchar default null ) 
result( 
  "NodeId" char(1024),
  "NodeTitle" char(1024) ) 
begin
  call "SWA"."EquipmentReportEquipmentSelected"(@VesselIds,@ParentNodeId,@SearchText,@SelectedNodeIds)
end