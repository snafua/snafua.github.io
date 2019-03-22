create procedure "_PNG"."UsersFiltersDelete"( 
  in @FilterIds long varchar,
  in @Type char(10) default 'History' ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PNG"."UsersFiltersDelete"(@FilterIds,@Type)
end