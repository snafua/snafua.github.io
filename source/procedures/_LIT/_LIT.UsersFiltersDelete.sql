create procedure "_LIT"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."UsersFiltersDelete"(@FilterIds,@Type)
end