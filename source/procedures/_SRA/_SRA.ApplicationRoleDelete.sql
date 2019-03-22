create procedure "_SRA"."ApplicationRoleDelete"( 
  in @RowId long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @ApplicationId integer;
  declare @RoleId integer;
  if("ECO"."CheckNull"(@RowId) is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    set @RoleId = "SWA"."KeyValuePairParse"(@RowId,'RoleId')
  end if;
  call "SRA"."ApplicationRoleDelete"(@ApplicationId,@RoleId)
end