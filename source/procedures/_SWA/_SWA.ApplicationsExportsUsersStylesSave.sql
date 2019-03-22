create procedure "_SWA"."ApplicationsExportsUsersStylesSave"( 
  in @ApplicationId integer,
  in @Styles long varchar,
  in @GridId integer default null ) 
begin
  call "SWA"."ApplicationsExportsUsersStylesSave"(@ApplicationId,@Styles,@GridId)
end