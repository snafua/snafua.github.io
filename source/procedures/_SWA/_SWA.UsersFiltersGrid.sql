create procedure "_SWA"."UsersFiltersGrid"( 
  in @ApplicationId integer,
  in @Type char(256) default 'History',
  in @OrderBy char(256) default null ) 
result( 
  "FilterId" integer,
  "FilterDescription" char(256),
  "IsAdvanced" bit,
  "FilterData" long varchar ) 
begin
  call "SWA"."UsersFiltersGrid"(@ApplicationId,@Type,@OrderBy)
end