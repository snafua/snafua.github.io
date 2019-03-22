create procedure "_SWA"."FiltersApplicationsUsersStandard"( 
  in @ApplicationId integer,
  in @FilterId integer ) 
result( 
  "AttributeId" integer,
  "AttributeClass" char(10),
  "AttributeDisplayName" char(128),
  "AttributeDisplayValue" char(128),
  "AttributeValue" long varchar ) 
begin
  call "SWA"."FiltersApplicationsUsersStandard"(@ApplicationId,@FilterId)
end