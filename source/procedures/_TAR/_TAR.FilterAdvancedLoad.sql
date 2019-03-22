create procedure "_TAR"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "TAR"."FilterAdvancedLoadJSON"()
end