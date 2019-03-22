create procedure /*
* _SMH.FilterListItemTypeLoad - thawley
*/
"_SMH"."FilterListItemTypeLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "ItemType" char(15),
  "Filtered" smallint ) 
begin
  call "SMH"."FilterListItemTypeLoad"(@GetDefault)
end