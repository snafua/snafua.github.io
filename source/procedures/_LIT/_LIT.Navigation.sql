create procedure "_LIT"."Navigation"( 
  in @NodeType char(10) default 'Vessel',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "LIT"."Navigation"(@NodeType,@NodeId)
end