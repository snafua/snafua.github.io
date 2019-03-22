create procedure "_SEAS"."VesselsClassesLoad"( 
  in @AuthorizedVessels long varchar default null ) 
result( "VesselClassId" smallint,"VesselClassDesc" char(30) ) 
begin
  call "SEAS"."VesselsClassesLoad"(@AuthorizedVessels)
end