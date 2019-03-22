create procedure /*
* _PAV.UsersFilterSaveAsFavorite - thawley
*/
"_PAV"."UsersFilterSaveAsFavorite"( 
  in @Description char(128) ) 
begin
  call "PAV"."UsersFilterSaveAsFavorite"(@Description)
end