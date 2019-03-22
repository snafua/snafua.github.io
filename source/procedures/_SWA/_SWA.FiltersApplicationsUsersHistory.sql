create procedure "_SWA"."FiltersApplicationsUsersHistory"( 
  in @ApplicationId integer,
  in @Limit integer default null ) 
result( 
  "FilterId" integer,
  "FilterName" char(128),
  "PermissionsBitmap" integer ) 
begin
  call "SWA"."FiltersApplicationsUsersHistory"(@ApplicationId,@Limit)
end