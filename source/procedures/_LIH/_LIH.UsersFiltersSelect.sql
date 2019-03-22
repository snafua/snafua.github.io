create procedure "_LIH"."UsersFiltersSelect"( 
  in @FilterId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "LIH"."UsersFiltersSelect"(@FilterId)
end