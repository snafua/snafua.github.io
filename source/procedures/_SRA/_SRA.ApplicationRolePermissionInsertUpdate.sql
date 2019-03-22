create procedure "_SRA"."ApplicationRolePermissionInsertUpdate"( 
  in @RowId char(1024),
  in @Granted bit ) 
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
  call "SRA"."ApplicationRolePermissionInsertUpdate"(@ApplicationId,@RoleId,@PermissionId,@Granted)
end