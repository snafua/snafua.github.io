create procedure /*
* _SMH.FilterListPriorityStatusLoad - thawley
*/
"_SMH"."FilterListPriorityStatusLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Priority" char(25),
  "Filtered" smallint ) 
begin
  call "SMH"."FilterListPriorityStatusLoad"(@GetDefault)
end