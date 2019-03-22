create procedure "_SWA"."ApplicationFeedbackEquipment"( 
  in @VesselId integer,
  in @HeirarchyId integer default null,
  in @ParentNodeId char(1024) default null,
  in @SelectedNodeId char(1024) default null,
  in @SearchText long varchar default null ) 
result( 
  "EquipmentNodeId" char(1024),
  "EquipmentDescription" char(1024),
  "IsSelected" bit,
  "HasChildren" bit,
  "IsExpanded" bit ) 
begin
  if @HeirarchyId is null and @ParentNodeId is not null then
    set @HeirarchyId = "SWA"."KeyValuePairParse"(@ParentNodeId,'HeirarchyId')
  end if;
  if @HeirarchyId = 1 then
    call "SWA"."ApplicationFeedbackEquipmentSystem"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  elseif @HeirarchyId = 2 then
    call "SWA"."ApplicationFeedbackEquipmentHSC"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  elseif @HeirarchyId = 3 then
    call "SWA"."ApplicationFeedbackEqDescription"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  else
    call "SWA"."ApplicationFeedbackEquipmentSystem"(@VesselId,@ParentNodeId,@SelectedNodeId,@SearchText)
  end if
end