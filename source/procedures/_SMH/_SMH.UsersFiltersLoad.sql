create procedure /*
* _SMH.UsersFiltersLoad - thawley
*/
"_SMH"."UsersFiltersLoad"( 
  in @Type char(256) default 'History' ) 
result( 
  "FilterId" integer,
  "FilterAdvanced" integer,
  "FilterType" char(10),
  "FilterDescription" char(128),
  "FilterLastActive" char(25) ) 
begin
  call "SMH"."UsersFiltersLoad"(@Type)
end