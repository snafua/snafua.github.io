create procedure --JLD
"_SWA"."VesselEquipment"( 
  in @NodeId char(1024) default null,
  in @VesselId integer default null,
  in @HierarchyType char(128) default null,
  in @ParentNodeId char(1024) default null,
  in @SelectedNodeId char(1024) default null,
  in @SearchText long varchar default null ) 
result( 
  "EquipmentNodeId" char(1024),
  "VesselEquipmentRowId" char(1024),
  "EquipmentDescription" char(1024),
  "IsSelected" bit,
  "HasChildren" bit,
  "IsExpanded" bit ) 
begin
  /*
2018-10-22 JLD E-04166 B-19397
*/
  declare @HierarchyId integer;
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"("COALESCE"(@NodeId,@ParentNodeId,@SelectedNodeId),'VesselId')
  end if;
  if(@HierarchyType is null) and(@ParentNodeId is not null) then
    set @HierarchyId = "SWA"."KeyValuePairParse"(@ParentNodeId,'HierarchyId')
  end if;
  if(@HierarchyType is not null) and(@HierarchyId is null) then
    set @HierarchyId
       = case when @HierarchyType = 'System / Description' then 1
      when @HierarchyType = 'SystemDescription' then 1
      when @HierarchyType = 'Equipment HSC' then 2
      when @HierarchyType = 'EquipmentHSC' then 2
      when @HierarchyType = 'HSC' then 2
      when @HierarchyType = 'Equipment' then 2
      when @HierarchyType = 'Classification' then 3
      when @HierarchyType = 'Description' then 3
      when @HierarchyType = 'EquipmentClassification' then 3
      else 1
      end
  end if;
  if(@HierarchyId = 1) then
    call "SWA"."VesselEquipmentSystem"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  elseif(@HierarchyId = 2) then
    call "SWA"."VesselEquipmentHSCEx"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  elseif(@HierarchyId = 3) then
    call "SWA"."VesselEquipmentClassification"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  else
    call "SWA"."VesselEquipmentSystem"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  end if
end