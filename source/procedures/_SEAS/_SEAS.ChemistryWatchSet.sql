create procedure "_SEAS"."ChemistryWatchSet"( 
  in @VesselId smallint,
  in @Month char(10) ) 
begin
  call "SEAS"."ChemistryWatchSet"(@VesselId,@Month)
end