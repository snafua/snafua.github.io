create procedure "_SEAS"."ChemistryWatchesClear"( 
  in @VesselId smallint ) 
begin
  call "SEAS"."ChemistryWatchesClear"(@VesselId)
end