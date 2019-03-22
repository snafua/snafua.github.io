create procedure --AIM
"_SUA"."UserApplicationRolesInsertUpdate"( 
  in @RowId char(1024),
  in @ApplicationId integer,
  in @VesselId integer,
  in @RoleId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-07-18 JBH - E-04333 B-18455:  Procedure created in support of user role assignment
2018-10-03 AIM E-04333 B-19483  Input parameters changed
*/
  declare @UserId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  call "SUA"."UserApplicationRolesInsertUpdate"(@VesselId,@ApplicationId,@UserId,@RoleId)
end