create procedure "_SWA"."EquipmentReportEquipment"( 
  in @VesselIds long varchar,
  in @EquipmentScopeId integer,
  in @HierarchyType char(50) default null,
  in @ParentNodeId char(1024) default null,
  in @SelectedNodeIds long varchar default null,
  in @SearchText long varchar default null ) 
result( 
  "HasChildren" bit,
  "NodeId" char(1024),
  "NodeTitle" char(1024) ) 
begin
  set @HierarchyType = "ECO"."Checknull"(@HierarchyType);
  if @HierarchyType is null and @ParentNodeId is not null then
    set @HierarchyType = "SWA"."KeyValuePairParse"(@ParentNodeId,'NodeType')
  end if;
  set @ParentNodeId = "ECO"."Checknull"(@ParentNodeId);
  set @SearchText = "ECO"."Checknull"(@SearchText);
  set @SelectedNodeIds = "ECO"."Checknull"(@SelectedNodeIds);
  if @HierarchyType = 'SystemDescription' or @HierarchyType = 'System/Description' then
    call "SWA"."EquipmentReportSystemDescription"(@VesselIds,@EquipmentScopeId,@ParentNodeId,@SearchText,@SelectedNodeIds)
  elseif @HierarchyType = 'EquipmentDescription' then
    call "SWA"."EquipmentReportEquipmentDescription"(@VesselIds,@EquipmentScopeId,@ParentNodeId,@SearchText,@SelectedNodeIds)
  elseif @HierarchyType = 'EquipmentHSC' then
    call "SWA"."EquipmentReportEquipmentHSC"(@VesselIds,@EquipmentScopeId,@ParentNodeId,@SearchText,@SelectedNodeIds)
  else
    call "SWA"."EquipmentReportSystemDescription"(@VesselIds,@EquipmentScopeId,@ParentNodeId,@SearchText,@SelectedNodeIds)
  end if
end