create procedure "_LIT"."UsersFiltersSelect"( 
  in @FilterId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIT"."UsersFiltersSelect"(@FilterId)
end