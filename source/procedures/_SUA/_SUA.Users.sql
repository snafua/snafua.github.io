create procedure --B-20842 E-04943
--RJM
"_SUA"."Users"( 
  in @NodeId char(1024),
  in @OrderBy char(1024) default null,
  in @IsLimited bit default null,
  in @TextSearch char(1024) default null ) 
result( 
  "RowId" char(1024),
  "UserFullName" char(512),
  "UserLoginId" char(128),
  "BilletDescription" char(50),
  "LastLoginTimestamp" timestamp,
  "LoginType" char(25),
  "PKIStatus" char(10),
  "TotalRows" integer,
  "OrderBy" char(1024),
  "EnablePKIPermissions" integer,
  "EnableStandardPermissions" integer,
  "UserPermissions" integer ) 
begin
  /*
2018-11-29 AIM E-04333 B-20278 Added UserPermissions
2019-02-04 RJM B-20842 E-04943 added @TextSearch
*/
  declare @ApplicationId integer;
  declare @NodeType char(128);
  declare @AllVessels bit;
  declare @VesselId integer;
  declare @DepartmentId integer;
  declare @BilletId integer;
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  set @ApplicationId = "SUA"."ApplicationId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderBy');
  set @UserId = "SWA"."UserId"();
  if(@IsLimited is null) then
    set @Islimited = 1
  end if;
  if("LENGTH"(@OrderBy) < 4) then
    set @OrderBy = null
  end if;
  if("ECO"."CheckNull"(@NodeId) is null) then
    set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    set @OrderBy = 'UserFullName ASC'
  end if;
  call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy);
  if(@NodeId is not null) then
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @AllVessels = "SWA"."KeyValuePairParse"(@NodeId,'AllVessels');
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @DepartmentId = "SWA"."KeyValuePairParse"(@NodeId,'DepartmentId');
    set @BilletId = "SWA"."KeyValuePairParse"(@NodeId,'BilletId')
  end if;
  if(@NodeType is null) then
    set @NodeType = 'PersonnelBillet'
  end if;
  call "SUA"."Users"(@NodeType,@AllVessels,@VesselId,@DepartmentId,@BilletId,@IsLimited,@OrderBy,@ApplicationId,@TextSearch)
end