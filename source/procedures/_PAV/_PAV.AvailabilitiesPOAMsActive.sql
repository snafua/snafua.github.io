create procedure "_PAV"."AvailabilitiesPOAMsActive"( 
  in @RowId long varchar ) 
result( 
  "POAMId" integer,
  "POAMDescription" char(128) ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  call "PNG"."PlanOfActionAndMilestones"('Availability',@VesselId,@AvailabilityId)
end