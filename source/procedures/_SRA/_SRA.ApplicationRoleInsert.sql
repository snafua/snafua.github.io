create procedure "_SRA"."ApplicationRoleInsert"( 
  in @NodeId long varchar default null,
  in @RowId long varchar default null,
  in @RoleName char(128),
  in @RoleDescription char(1024) ) 
result( 
  "RoleId" integer,
  "GroupRowId" long varchar,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @ApplicationId integer;
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId')
  elseif("ECO"."CheckNull"(@NodeId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@NodeId,'ApplicationId')
  end if;
  call "SRA"."ApplicationRoleInsert"(@ApplicationId,@RoleName,@RoleDescription)
end