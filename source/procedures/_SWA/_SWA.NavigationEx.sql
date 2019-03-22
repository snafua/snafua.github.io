create procedure "_SWA"."NavigationEx"( 
  in @ApplicationId integer,
  in @NavigationTreeType char(20) default null,
  in @NavigationSearchText long varchar default null,
  in @NodeId long varchar default null ) 
result( 
  "NodeId" long varchar,
  "NodeText" char(80),
  "HasChildren" bit,
  "IsExpanded" bit,
  "IsSelected" bit ) 
begin
  call "SWA"."NavigationEx"(@ApplicationId,@NavigationTreeType,@NavigationSearchText,@NodeId)
end