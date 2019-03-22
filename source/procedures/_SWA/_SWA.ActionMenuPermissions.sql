create procedure "_SWA"."ActionMenuPermissions"( 
  in @NodeId char(1024),
  in @ApplicationId integer ) 
result( 
  "PermissionName" char(50),
  "PermissionValue" bit ) 
begin
  call "SWA"."ActionMenuPermissions"(@NodeId,@ApplicationId)
end