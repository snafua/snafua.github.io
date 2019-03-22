create procedure "_SWA"."VesselOperationalStatuses"( 
  in @VesselId integer ) 
result( 
  "OperationalStatusId" integer,
  "OperationalStatusCode" char(128) ) 
begin
  call "SWA"."VesselOperationalStatuses"(@VesselId)
end