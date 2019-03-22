create procedure "_LIH"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."UsersFiltersDelete"(@FilterIds,@Type)
end