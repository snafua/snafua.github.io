create procedure "_SRA"."ApplicationRoleDuplicate"( 
  in @NodeId long varchar default null,
  in @RowId long varchar,
  in @RoleName char(128),
  in @RoleDescription char(1024) ) 
result( 
  "RoleId" integer,
  "GroupRowId" long varchar,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @ApplicationId integer;
  declare @RoleId integer;
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    set @RoleId = "SWA"."KeyValuePairParse"(@RowId,'RoleId')
  elseif("ECO"."CheckNull"(@NodeId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@NodeId,'ApplicationId');
    set @RoleId = "SWA"."KeyValuePairParse"(@NodeId,'RoleId')
  end if;
  call "SRA"."ApplicationRoleDuplicate"(@ApplicationId,@RoleId,@RoleName,@RoleDescription)
end