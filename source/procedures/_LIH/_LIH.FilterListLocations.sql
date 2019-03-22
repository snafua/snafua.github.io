create procedure "_LIH"."FilterListLocations"( 
  in @GetDefault smallint default 0 ) 
result( 
  "LocationId" integer,
  "LocationTitle" char(56),
  "Filtered" smallint ) 
begin
  call "LIH"."FilterListLocations"(@GetDefault)
end