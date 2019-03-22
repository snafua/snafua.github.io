create procedure --JBH
"_SUA"."ApplicationRoles"( 
  in @RowId char(1024) ) 
result( 
  "RoleId" integer,
  "RoleName" char(128) ) 
begin
  /*
2018-07-18 JBH - E-04333 B-18455:  Procedure created in support of user role assignment
*/
  declare @ApplicationId integer;
  declare @RoleId integer;
  set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
  call "SUA"."ApplicationRoles"(@ApplicationId)
end