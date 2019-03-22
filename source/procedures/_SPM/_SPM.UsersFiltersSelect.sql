create procedure "_SPM"."UsersFiltersSelect"( 
  in @FilterId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "SPM"."UsersFiltersSelect"(@FilterId)
end