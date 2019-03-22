create procedure "_TAE"."FilterListVesselsStatusLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "Filter" long varchar,
  "Label" char(256),
  "Filtered" bit ) 
begin
  call "TAE"."FilterListVesselsStatusLoad"(@GetDefault)
end