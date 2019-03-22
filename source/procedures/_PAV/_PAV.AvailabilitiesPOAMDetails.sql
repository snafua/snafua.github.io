create procedure "_PAV"."AvailabilitiesPOAMDetails"( 
  in @RowId long varchar ) 
result( 
  "POAMId" integer,
  "POAMCalendarId" integer,
  "Availability" char(128),
  "AvailabilityStartDate" char(10),
  "AvailabilityEndDate" char(10),
  "AvailabilityLastRevised" char(10),
  "POAMDescription" char(128),
  "CalendarDescription" char(80) ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  if(@VesselId is null) and(@AvailabilityId is null) then
    call "PAV"."NodeIdDecode"(@RowId,null,null,@VesselId,null,null,null,@AvailabilityId,null)
  end if;
  call "PAV"."AvailabilitiesPOAMDetails"(@VesselId,@AvailabilityId)
end