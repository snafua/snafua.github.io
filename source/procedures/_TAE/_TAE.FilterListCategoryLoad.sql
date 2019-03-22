create procedure "_TAE"."FilterListCategoryLoad"( 
  in @GetDefault bit default 0 ) 
result( 
  "Filter" long varchar,
  "Label" char(256),
  "Filtered" bit ) 
begin
  call "TAE"."FilterListCategoryLoad"(@GetDefault)
end