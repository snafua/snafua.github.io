create procedure "_SRA"."ApplicationPermissionDetails"( 
  in @RowId long varchar ) 
result( 
  "PermissionId" integer,
  "PermissionCode" char(25),
  "PermissionDescription" char(1024),
  "CategoryId" integer,
  "CategoryName" char(128) ) 
begin
  declare @ApplicationId integer;
  declare @PermissionId integer;
  if(@RowId is not null) then
    set @ApplicationId = "SWA"."KeyValuePairParse"(@RowId,'ApplicationId');
    set @PermissionId = "SWA"."KeyValuePairParse"(@RowId,'PermissionId')
  end if;
  call "SRA"."ApplicationPermissionDetails"(@ApplicationId,@PermissionId)
end