create procedure -- JHM
"_SRA"."ApplicationRolePermissions"( 
  in @RowId char(256) default null,
  in @GroupRowId char(256) default null,
  in @OrderBy char(1024) default null ) 
result( 
  "RowId" char(1024),
  "RoleName" char(128),
  "CategoryName" char(128),
  "PermissionCode" char(128),
  "PermissionGranted" bit,
  "RolePermissions" integer,
  "OrderBy" char(50),
  "ApplicationId" integer,
  "RoleId" integer,
  "PermissionId" integer ) 
begin
  declare @ApplicationId integer;
  declare @RowApplicationId integer;
  declare @RowRoleId integer;
  declare @RowPermissionId integer;
  declare @OrderBySettingId integer;
  declare @UserId integer;
  declare @SavedOrderBy long varchar;
  set @ApplicationId = "SRA"."ApplicationId"();
  set @UserId = "SWA"."UserId"();
  set @OrderBySettingId = "ECO"."ApplicationsSettingId"(@ApplicationId,'MainGridOrderby');
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @RowApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    set @RowRoleId = "SWA"."KeyValuePairParse"(@RowId,'RoleId');
    set @RowPermissionId = "SWA"."KeyValuePairParse"(@RowId,'PermissionId')
  elseif("ECO"."CheckNull"(@GroupRowId) is not null) then
    set @RowApplicationId = "SWA"."KeyValuePairParse"(@GroupRowId,'ApplicationId');
    set @RowRoleId = "SWA"."KeyValuePairParse"(@GroupRowId,'RoleId')
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
  call "SRA"."ApplicationRolePermissions"(@RowApplicationId,@RowRoleId,@RowPermissionId,@OrderBy,@ApplicationId)
end