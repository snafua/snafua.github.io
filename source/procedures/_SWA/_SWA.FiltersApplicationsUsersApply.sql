create procedure "_SWA"."FiltersApplicationsUsersApply"( 
  in @ApplicationId integer,
  in @FilterId integer ) 
result( 
  "FilterId" integer,
  "FilterType" char(20),
  "AttributeCount" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."FiltersApplicationsUsersApply"(@ApplicationId,@FilterId)
end