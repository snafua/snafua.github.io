create procedure "_SRM"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "SRM"."FilterAdvancedLoadJSON"()
end