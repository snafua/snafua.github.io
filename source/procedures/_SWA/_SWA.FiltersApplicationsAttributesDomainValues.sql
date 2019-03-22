create procedure "_SWA"."FiltersApplicationsAttributesDomainValues"( 
  in @ApplicationId integer,
  in @AttributeId integer,
  in @FilterId integer,
  in @FilterAttributeId integer default null ) 
result( 
  "OptionValue" char(128),
  "OptionDisplayName" char(128),
  "OptionSelected" bit ) 
begin
  call "SWA"."FiltersApplicationsAttributesDomainValues"(@ApplicationId,@AttributeId,@FilterId,@FilterAttributeId)
end