create procedure "_SEAS"."ChemistryWatchesLogs"( 
  in @VesselId smallint,
  in @Sort long varchar ) 
result( 
  "VesselId" smallint,
  "LogId" smallint,
  "LogText" char(50),
  "IsAlarmed" bit ) 
begin
  call "SEAS"."ChemistryWatchesLogs"(@VesselId,@Sort)
end