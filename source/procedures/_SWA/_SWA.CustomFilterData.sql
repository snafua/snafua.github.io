create procedure "_SWA"."CustomFilterData"( 
  in @ApplicationId integer,
  in @Name char(64),
  in @GetDefault bit ) 
result( 
  "Filter" long varchar,
  "Label" char(256),
  "Filtered" bit ) 
begin
  call "SWA"."CustomFilterData"(@ApplicationId,@Name,@GetDefault)
end