create procedure "_VTL"."QuickEditVesselsLoad"( 
  in @NodeType char(10) default 'Class',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "VTL"."QuickEditVesselsLoad"(@NodeType,@NodeId)
end