create procedure "_TAR"."TransaltStatuses"( 
  in @RowId char(1024) default null ) 
result( 
  "Status" char(25) ) 
begin
  call "TAR"."TransaltStatuses"(@RowId)
end