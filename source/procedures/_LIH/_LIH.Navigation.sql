create procedure "_LIH"."Navigation"( 
  in @NodeType char(10) default 'Vessel',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" bit,
  "IsExpanded" bit,
  "IsSelected" bit ) 
begin
  call "LIH"."Navigation"(@NodeType,@NodeId)
end