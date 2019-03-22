create procedure "_SWA"."EquipmentSelected"( 
  in @ApplicationId integer,
  in @RowId char(1024),
  in @HierarchyType char(50) default 'SystemDescription',
  in @ParentNodeId char(256) default null ) 
result( 
  "EquipmentNodeId" char(256),
  "EquipmentNodeText" char(80),
  "HasChildren" bit,
  "IsExpanded" bit,
  "IsSelected" bit ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @ParentSystemId integer;
  declare @ParentClassificationId integer;
  declare @SelectedEquipmentId integer;
  declare @ParentHSC char(25);
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @ParentNodeId = "ECO"."CHeckNull"(@ParentNodeId);
  set @HierarchyType = "ECO"."CHeckNull"(@HierarchyType);
  if @ParentNodeId is not null then
    set @ParentSystemId = "SWA"."KeyValuePairParse"(@ParentNodeId,'SystemId');
    set @ParentClassificationId = "SWA"."KeyValuePairParse"(@ParentNodeId,'ClassificationId');
    set @ParentHSC = "SWA"."KeyValuePairParse"(@ParentNodeId,'HSC')
  end if;
  if @VesselId is not null then
    if @HierarchyType = 'SystemDescription' then
      call "AWR"."SelectedEquipmentsSystemDescription"(@VesselId,@WorkRequestId,@ParentSystemId)
    elseif @HierarchyType = 'EquipmentClassification' then
      call "AWR"."SelectedEquipmentClassification"(@VesselId,@WorkRequestId,@ParentClassificationId)
    elseif @HierarchyType = 'Classification' then
      call "AWR"."SelectedEquipmentClassification"(@VesselId,@WorkRequestId,@ParentClassificationId)
    elseif @HierarchyType = 'VesselEquipment' then
      call "AWR"."SelectedEquipmentsSystemDescription"(@VesselId,@WorkRequestId,@ParentSystemId)
    elseif @HierarchyType = 'EquipmentHSC' then
      call "AWR"."SelectedEquipmentHSC"(@VesselId,@WorkRequestId,@ParentHSC)
    end if
  end if
end