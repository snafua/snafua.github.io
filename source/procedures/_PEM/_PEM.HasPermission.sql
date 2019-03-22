create function "_PEM"."HasPermission"( 
  in @VesselId integer,
  in @PermissionId char(20),
  in @BusinessRules integer default 15,
  in @ApplicationId integer default null ) 
returns integer
begin
  declare @Result integer;
  set @Result = "PEM"."HasPermission"(@VesselId,@PermissionId,@BusinessRules,@ApplicationId);
  return @Result
end