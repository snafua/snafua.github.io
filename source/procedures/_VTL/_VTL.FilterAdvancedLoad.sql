create procedure "_VTL"."FilterAdvancedLoad"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "VTL"."FilterAdvancedLoadJSON"()
end