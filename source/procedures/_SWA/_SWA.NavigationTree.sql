create procedure "_SWA"."NavigationTree"( 
  in @ApplicationId integer,
  in @NodeType char(10) default 'Vessel',
  in @NodeId char(256) default null,
  in @SearchQuery char(256) default null ) 
result( 
  "NodeId" char(256),
  "NodeTitle" char(128),
  "HasChildren" smallint,
  "IsExpanded" smallint,
  "IsSelected" smallint ) 
begin
  call "SWA"."NavigationTree"(@ApplicationId,@NodeType,@NodeId,@SearchQuery)
end