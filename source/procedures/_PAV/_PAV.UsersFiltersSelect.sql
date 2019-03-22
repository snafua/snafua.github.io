create procedure /*
* _PAV.UsersFiltersSelect - thawley
*/
"_PAV"."UsersFiltersSelect"( 
  in @FilterId integer ) 
begin
  call "PAV"."UsersFiltersSelect"(@FilterId)
end