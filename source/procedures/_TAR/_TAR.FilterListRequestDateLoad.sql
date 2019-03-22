create procedure "_TAR"."FilterListRequestDateLoad"( 
  in @GetDefault smallint default 1 ) 
result( 
  "Filter" char(16),
  "Label" char(56),
  "StartDate" char(32),
  "EndDate" char(32),
  "Filtered" smallint ) 
begin
  /*
2017-11-14 RJM Added default for GetDefault is null is passed in
2017-12-13 JLD Return StartDate and EndDate
*/
  if @GetDefault is null then
    set @GetDefault = 1
  end if;
  call "TAR"."FilterListRequestDateLoad"(@GetDefault)
end