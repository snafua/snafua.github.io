create procedure "_SWA"."FiltersApplicationsUsersFavorites"( 
  in @ApplicationId integer,
  in @Limit integer default null ) 
result( 
  "FilterId" integer,
  "FilterName" char(128),
  "PermissionBitmap" integer ) 
begin
  call "SWA"."FiltersApplicationsUsersFavorites"(@ApplicationId,@Limit)
end