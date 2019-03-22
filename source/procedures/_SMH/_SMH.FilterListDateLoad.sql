create procedure /*
* _SMH.FilterListDateLoad - thawley
*/
"_SMH"."FilterListDateLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "DateCode" char(16),
  "DateDescription" char(56),
  "StartDate" char(32),
  "EndDate" char(32),
  "Filtered" smallint ) 
begin
  call "SMH"."FilterListDateLoad"(@GetDefault)
end