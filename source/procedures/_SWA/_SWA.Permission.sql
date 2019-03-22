create procedure "_SWA"."Permission"( 
  in @ApplicationId integer,
  in @NodeRowId char(1024),
  in @PermissionCode char(25) ) 
result( 
  "Permission" integer ) 
begin
  call "SWA"."Permission"(@ApplicationId,@NodeRowId,@PermissionCode)
end