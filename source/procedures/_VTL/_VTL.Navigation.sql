create procedure "_VTL"."Navigation"( 
  in @NodeType char(10) default 'Class',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "VTL"."Navigation"(@NodeType,@NodeId)
end