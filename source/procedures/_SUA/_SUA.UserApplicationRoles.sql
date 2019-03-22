create procedure --JBH
"_SUA"."UserApplicationRoles"( 
  in @RowId char(1024) ) 
result( 
  "RowId" char(1024),
  "ApplicationTitle" char(50),
  "SelectedRoleId" integer ) 
begin
  /*
2018-07-18 JBH - E-04333 B-18455:  Procedure created in support of user role assignment
*/
  declare @UserId integer;
  declare @SiteId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  set @SiteId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "SUA"."UserApplicationRoles"(@UserId,@SiteId)
end