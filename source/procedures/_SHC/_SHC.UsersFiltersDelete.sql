create procedure "_SHC"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SHC"."UsersFiltersDelete"(@FilterIds,@Type)
end