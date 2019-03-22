create procedure "_SWA"."FiltersApplicationsUsersGlobal"( 
  in @ApplicationId integer,
  in @Limit integer ) 
result( 
  "FilterId" integer,
  "FilterName" char(128),
  "CanApply" bit ) 
begin
  call "SWA"."FiltersApplicationsUsersGlobal"(@ApplicationId,@Limit)
end