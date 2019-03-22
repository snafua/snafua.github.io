create procedure "_SHC"."UsersFilterSaveAsFavorite"( in @Description char(128) ) 
begin
  call "SHC"."UsersFilterSaveAsFavorite"(@Description)
end