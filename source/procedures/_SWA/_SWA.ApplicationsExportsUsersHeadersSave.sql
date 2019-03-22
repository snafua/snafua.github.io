create procedure "_SWA"."ApplicationsExportsUsersHeadersSave"( 
  in @ApplicationId integer,
  in @HeaderValues long varchar,
  in @GridId integer default null ) 
begin
  call "SWA"."ApplicationsExportsUsersHeadersSave"(
  @ApplicationId,
  @HeaderValues,
  @GridId)
end