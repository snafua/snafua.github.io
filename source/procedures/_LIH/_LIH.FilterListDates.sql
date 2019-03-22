create procedure "_LIH"."FilterListDates"( 
  in @GetDefault smallint default 0 ) 
result( 
  "DateCode" char(16),
  "DateDescription" char(56),
  "StartDate" char(32),
  "EndDate" char(32),
  "Filtered" smallint ) 
begin
  call "LIH"."FilterListDates"(@GetDefault)
end