create procedure "_SWA"."ApplicationFeedbackVessel"( 
  in @ApplicationId integer,
  in @VesselId integer default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(128),
  "IsSelected" bit ) 
begin
  call "SWA"."ApplicationFeedbackVessel"(@ApplicationId,@VesselId)
end