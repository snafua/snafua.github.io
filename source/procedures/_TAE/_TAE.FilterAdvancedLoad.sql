create procedure "_TAE"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "TAE"."FilterAdvancedLoadJSON"()
end