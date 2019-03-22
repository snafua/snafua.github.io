create procedure "_SPM"."FilterListStatusLoad"( 
  in @GetDefault smallint default 0 ) 
result( 
  "Status" char(20),
  "Filtered" integer ) 
begin
  call "SPM"."FilterListStatusLoad"(@GetDefault)
end