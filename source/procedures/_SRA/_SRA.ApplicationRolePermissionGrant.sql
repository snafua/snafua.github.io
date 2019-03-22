create procedure "_SRA"."ApplicationRolePermissionGrant"( 
  in @RowId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @ApplicationId integer;
  declare @RoleId integer;
  declare @PermissionId integer;
  if(@RowId is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    set @RoleId = "SWA"."KeyValuePairParse"(@RowId,'RoleId');
    set @PermissionId = "SWA"."KeyValuePairParse"(@RowId,'PermissionId')
  end if;
  call "SRA"."ApplicationRolePermissionInsertUpdate"(@ApplicationId,@RoleId,@PermissionId,1)
end