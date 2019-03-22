create procedure "_SWA"."PermissionsBitmapOut"( 
  in @PermissionsBitmap integer,
  inout @EnableView bit default null,
  inout @CanEdit bit default null,
  inout @CanAdd bit default null,
  inout @CanDelete bit default null ) 
begin
  call "SWA"."PermissionsBitmapOut"(@PermissionsBitmap,@EnableView,@CanEdit,@CanAdd,@CanDelete)
end