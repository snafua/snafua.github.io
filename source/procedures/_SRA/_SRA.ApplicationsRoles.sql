create procedure -- JHM
"_SRA"."ApplicationsRoles"( 
  in @NodeId char(256) default null,
  in @IsLimited bit default 1,
  in @OrderBy char(1024) default null ) 
result( 
  "GroupRowId" char(1024),
  "RowId" char(1024),
  "RoleName" char(128),
  "CategoryName" char(128),
  "PermissionCode" char(128),
  "PermissionGranted" bit,
  "RolePermissions" integer,
  "TotalRows" integer,
  "OrderBy" char(50),
  "RoleRows" integer,
  "ApplicationId" integer,
  "RoleId" integer,
  "PermissionId" integer ) 
begin
  declare @ApplicationId integer;
  declare @NodeType char(128);
  declare @AllModules bit;
  declare @NodeApplicationGroupId integer;
  declare @NodeApplicationId integer;
  declare @NodeRoleId integer;
  declare @NodeSettingId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @SavedOrderBy long varchar;
  set @ApplicationId = "SRA"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @NodeSettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'NavigationNode');
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderby');
  if("ECO"."CheckNull"(@NodeId) is null) then
    set @NodeId = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'NavigationNode')
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@NodeSettingId,@NodeId)
  end if;
  if("ECO"."CheckNull"(@OrderBy) is null) then
    if("LENGTH"("ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')) > 0) then
      set @OrderBy = "ECO"."ApplicationsSettingsUsersValue"(@UserId,@ApplicationId,null,'MainGridOrderBy')
    else
      set @OrderBy = 'RoleName ASC, CategoryName ASC, PermissionCode ASC';
      call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
    end if
  else
    call "ECO"."ApplicationsSettingsUsersInsertUpdate"(@UserId,@ApplicationId,@OrderBySettingId,@OrderBy)
  end if;
  if(@NodeId is not null) then
    set @NodeType = "SWA"."KeyValuePairParse"(@NodeId,'NodeType');
    set @AllModules = "SWA"."KeyValuePairParse"(@NodeId,'AllModules');
    set @NodeApplicationGroupId = "SWA"."KeyValuePairParse"(@NodeId,'GroupId');
    set @NodeApplicationId = "SWA"."KeyValuePairParse"(@NodeId,'ApplicationId');
    set @NodeRoleId = "SWA"."KeyValuePairParse"(@NodeId,'RoleId')
  end if;
  if(@IsLimited is null) then
    set @IsLimited = 1
  end if;
  call "SRA"."ApplicationsRoles"(@NodeType,@AllModules,@NodeApplicationGroupId,@NodeApplicationId,@NodeRoleId,@IsLimited,@OrderBy,@ApplicationId)
end