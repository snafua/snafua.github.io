create procedure "_SRM"."Navigation"( 
  in @NodeType char(10) default 'Office',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "SRM"."Navigation"(@NodeType,@NodeId)
end