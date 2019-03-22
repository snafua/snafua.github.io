create procedure --AIM
"_SUA"."UserRoleManagementApplications"( 
  in @RowId char(1024),
  in @VesselId integer ) 
result( 
  "ApplicationId" integer,
  "ApplicationTitle" char(50),
  "RoleId" integer,
  "RoleName" char(128),
  "RolePermissions" integer ) 
begin
  /*
2018-10-03 AIM E-04333 B-19483
*/
  declare @UserId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  call "SUA"."UserRoleManagementApplications"(@VesselId,@UserId)
end