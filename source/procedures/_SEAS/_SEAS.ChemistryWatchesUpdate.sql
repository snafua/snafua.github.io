create procedure "_SEAS"."ChemistryWatchesUpdate"( 
  in @VesselId smallint,
  in @LogId smallint,
  in @Alarm bit ) 
begin
  call "SEAS"."ChemistryWatchesUpdate"(@VesselId,@LogId,@Alarm)
end