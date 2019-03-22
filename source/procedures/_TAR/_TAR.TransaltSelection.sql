create procedure "_TAR"."TransaltSelection"( 
  in @AllText long varchar default null ) 
result( 
  "RowId" char(1024),
  "TransaltNumber" char(25),
  "TransaltTitle" char(128),
  "WorkItemLibraryId" integer,
  "CanEdit" bit ) 
begin
  call "TAR"."TransaltSelection"(@AllText)
end