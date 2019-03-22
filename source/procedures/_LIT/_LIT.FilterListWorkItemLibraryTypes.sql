create procedure "_LIT"."FilterListWorkItemLibraryTypes"( 
  in @GetDefault smallint default 0 ) 
result( 
  "LibraryItemType" char(25),
  "Filtered" smallint ) 
begin
  call "LIT"."FilterListWorkItemLibraryTypes"(@GetDefault)
end