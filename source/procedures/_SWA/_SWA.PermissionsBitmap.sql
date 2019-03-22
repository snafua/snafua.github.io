create function "_SWA"."PermissionsBitmap"( 
  in @EnableView bit default 0,
  in @CanEdit bit default 0,
  in @CanAdd bit default 0,
  in @CanDelete bit default 0 ) 
returns integer
begin
  declare @Result integer;
  set @Result = "SWA"."PermissionsBitmap"(@EnableView,@CanEdit,@CanAdd,@CanDelete);
  return(@Result)
end