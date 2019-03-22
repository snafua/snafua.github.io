create procedure "_VTL"."QuickEditEquipmentLoad"( 
  in @NodeType char(10) default 'Class',
  in @NodeId char(256) default null,
  in @VesselIds long varchar default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "VTL"."QuickEditEquipmentLoad"(@NodeType,@NodeId,@VesselIds)
end