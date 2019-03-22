create procedure "_SWA"."NavigationHierarchies"( 
  in @ApplicationId integer,
  in @NavigationType char(20) ) 
result( 
  "HierarchyType" char(20),
  "HierarchyDescription" char(50),
  "IsSelected" bit,
  "AllowSearch" bit ) 
begin
  call "SWA"."NavigationHierarchies"(@ApplicationId,@NavigationType)
end