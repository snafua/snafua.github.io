create procedure "_SWA"."ApplicationsExportsUsersColumnsSave"( 
  in @ColumnData long varchar,
  in @ApplicationId integer,
  in @GridId integer default null ) 
begin
  call "SWA"."ApplicationsExportsUsersColumnsSave"(@ColumnData,@ApplicationId,@GridId)
end