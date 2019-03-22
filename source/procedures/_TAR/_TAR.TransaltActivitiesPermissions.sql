create procedure "_TAR"."TransaltActivitiesPermissions"( 
  in @RowId char(1024) default null ) 
result( 
  "CanVote" bit,
  "CanAddUser" bit,
  "CanDeleteUser" bit ) 
begin
  call "TAR"."TransaltActivitiesPermissions"(@RowId)
end