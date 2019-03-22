create procedure "_SRA"."ApplicationRoleInsertUpdateDuplicate"( 
  in @RowId long varchar,
  in @RoleId integer default null,
  in @RoleName char(128),
  in @RoleDescription char(1024) ) 
result( 
  "RoleId" integer,
  "RowId" long varchar,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @DuplicateRole bit;
  set @DuplicateRole = "IFNULL"(@RoleId,0,1);
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    if(@DuplicateRole = 0) then
      set @RoleID = "SWA"."KeyValuePairParse"(@RowId,'RoleId')
    end if end if;
  call "SRA"."ApplicationRoleInsertUpdateDuplicate"(@ApplicationId,@RoleId,@RoleName,@RoleDescription,@Duplicate)
end