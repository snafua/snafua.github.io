create procedure "_TAE"."FilterListPriorityLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "Filter" long varchar,
  "Label" char(256),
  "Filtered" bit ) 
begin
  call "TAE"."FilterListPriorityLoad"(@GetDefault)
end