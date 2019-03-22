create procedure "_SWA"."FiltersApplicationsUsersCurrent"( 
  in @ApplicationId integer ) 
result( 
  "FilterId" integer,
  "FilterType" char(20),
  "AttributeCount" integer ) 
begin
  call "SWA"."FiltersApplicationsUsersCurrent"(@ApplicationId)
end