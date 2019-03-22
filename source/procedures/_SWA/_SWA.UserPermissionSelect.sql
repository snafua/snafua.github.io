create function "_SWA"."UserPermissionSelect"( 
  in @ApplicationId smallint,
  in @PermissionId char(15),
  in @NodeId long varchar default null,
  in @RowId long varchar default null ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SWA"."UserPermissionSelect"(@ApplicationId,@PermissionId,@NodeId,@RowId);
  return(@Result)
end