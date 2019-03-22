create procedure -- JLD 11.6.2017 B-14849 Pass in CurrentNodeId to support Ashore M&R - Workbook - Update Equipment Status Dialog tree to autoselect last changed node on reload
"_SWA"."VesselEquipmentOperationalStatus"( 
  in @VesselId integer default null,
  in @ParentNodeId char(1024) default null,
  in @CurrentNodeId char(1024) default null ) 
result( 
  "NodeId" long varchar,
  "NodeText" char(80),
  "NodeType" char(80),
  "HasChildren" bit,
  "IsExpanded" bit,
  "IsSelected" bit ) 
begin
  --IF @NodeId IS NOT NULL OR @RowId IS NOT NULL THEN
  call "SWA"."VesselEquipmentOperationalStatus"(@VesselId,@ParentNodeId,@CurrentNodeId)
--END IF;
end