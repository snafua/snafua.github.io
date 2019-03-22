create procedure "_SRA"."ApplicationRoleDetails"( 
  in @RowId long varchar ) 
result( 
  "RoleId" integer,
  "RoleName" char(128),
  "RoleDescription" char(1024) ) 
begin
  declare @RoleId integer;
  if(@RowId is not null) then
    set @RoleId = "SWA"."KeyValuePairParse"(@RowId,'RoleId')
  end if;
  call "SRA"."ApplicationRoleDetails"(@RoleId)
end