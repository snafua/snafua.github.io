create procedure "_SWA"."RepairSources"( 
  in @VesselId integer default null,
  in @WorkRequestId integer default null ) 
result( 
  "InitiationSourceId" integer,
  "InitiationSourceTitle" char(80),
  "InitiationSourceDescription" char(256),
  "IsDisabled" bit ) 
begin
  call "SWA"."RepairSources"(@VesselId,@WorkRequestId)
end