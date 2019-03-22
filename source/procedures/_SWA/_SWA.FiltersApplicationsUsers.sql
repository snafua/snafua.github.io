create procedure "_SWA"."FiltersApplicationsUsers"( 
  in @ApplicationId integer,
  in @FilterType char(20),
  in @Limit integer default null ) 
result( 
  "FilterId" integer,
  "FilterName" char(128),
  "PermissionBitmap" integer ) 
begin
  if(@FilterType = 'Favorite') then call "SWA"."FiltersApplicationsUsersFavorites"(@ApplicationId,@Limit)
  elseif(@FilterType = 'History') then call "SWA"."FiltersApplicationsUsersHistory"(@ApplicationId,@Limit)
  elseif(@FilterType = 'Global') then call "SWA"."FiltersApplicationsUsersGlobal"(@ApplicationId,@Limit)
  end if
end