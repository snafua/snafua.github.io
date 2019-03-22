create procedure "_SHC"."FilterAdvancedLoadJSON"()
result( 
  "FilterId" integer,
  "AndOr" integer,
  "JSONValues" long varchar ) 
begin
  call "SHC"."FilterAdvancedLoadJSON"()
end