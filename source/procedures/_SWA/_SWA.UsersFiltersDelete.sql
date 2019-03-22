create procedure "_SWA"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SWA"."UsersFiltersDelete"(@FilterIds,@Type)
end