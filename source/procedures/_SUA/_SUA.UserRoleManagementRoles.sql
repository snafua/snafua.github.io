create procedure -- AIM
"_SUA"."UserRoleManagementRoles"( 
  in @ApplicationId integer ) 
result( 
  "RoleId" integer,
  "RoleName" char(128) ) 
begin
  /*
2018-10-03 AIM E-04333 B-19483
*/
  call "SUA"."UserRoleManagementRoles"(@ApplicationId)
end