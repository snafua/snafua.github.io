create procedure "_SPM"."Navigation"( 
  in @NodeType char(10) default 'Vessel',
  in @NodeId char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" integer,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "SPM"."Navigation"(@NodeType,@NodeId)
end