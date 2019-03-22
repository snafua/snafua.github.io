create procedure "_SEAS"."ChemistryWatchUnset"( 
  in @VesselId smallint,
  in @Month char(10) ) 
begin
  call "SEAS"."ChemistryWatchUnset"(@VesselId,@Month)
end