create procedure "_SEAS"."VesselsLoad"( 
  in @AuthorizedVessels long varchar default null,
  in @ClassId integer default null,
  in @MID integer default null,
  in @SMP integer default null ) 
result( "VesselId" char(50),"VesselName" char(80) ) 
begin
  call "SEAS"."VesselsLoad"(@AuthorizedVessels,@ClassId,@MID,@SMP)
end