create procedure /*
* _PAV.UsersFiltersLoad - thawley
*/
"_PAV"."UsersFiltersLoad"( 
  in @Type char(256) default 'History' ) 
result( 
  "FilterId" integer,
  "FilterAdvanced" integer,
  "FilterType" char(10),
  "FilterDescription" char(128),
  "FilterLastActive" char(25) ) 
begin
  call "PAV"."UsersFiltersLoad"(@Type)
end