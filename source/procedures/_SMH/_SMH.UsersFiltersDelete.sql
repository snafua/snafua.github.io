create procedure "_SMH"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SMH"."UsersFiltersDelete"(@FilterIds,@Type)
end