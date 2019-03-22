create procedure "_SWA"."GridSavedColumnsSave"( 
  in @ApplicationId integer,
  in @SavedColumns long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."GridSavedColumnsSave"(@ApplicationId,@SavedColumns)
end