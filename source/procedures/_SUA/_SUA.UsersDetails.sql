create procedure --AIM
"_SUA"."UsersDetails"( 
  in @RowId char(1024) ) 
result( 
  "UserFirstName" char(128),
  "UserMiddleName" char(128),
  "UserLastName" char(128),
  "UserFullName" char(128),
  "UserIsActive" bit,
  "BilletId" smallint,
  "BilletName" char(240),
  "BilletNodeId" char(1024),
  "UserRevisedBy" char(128),
  "Emails" varchar(500),
  "PhoneNumber" char(20) ) 
begin
  /*
2019-01-21 AIM E-04570 B-20644
*/
  declare @UserId integer;
  declare @VesselId integer;
  declare @DepartmentId integer;
  set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId');
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @DepartmentId = "SWA"."KeyValuePairParse"(@RowId,'DepartmentId');
  call "SUA"."UsersDetails"(@UserId,@VesselId,@DepartmentId)
end