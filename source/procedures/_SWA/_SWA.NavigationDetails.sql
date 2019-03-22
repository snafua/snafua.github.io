create procedure /*
2018-04-09 JLD E-03800 B-17525 Added HierarchyVisible for View Logs (module 1501)
*/
"_SWA"."NavigationDetails"( 
  in @ApplicationId integer ) 
result( 
  "VesselIds" long varchar,
  "VesselLabel" char(128),
  "NavigationType" long varchar,
  "NavigationTypeDescription" long varchar,
  "HierarchyType" long varchar,
  "HierarchyTypeDescription" long varchar,
  "AllowSearch" bit,
  "NavigationTypePermissions" integer,
  "HierarchyPermissions" integer,
  "HierarchyVisible" bit,
  "VesselPermissions" integer ) 
begin
  call "SWA"."NavigationDetails"(@ApplicationId)
end