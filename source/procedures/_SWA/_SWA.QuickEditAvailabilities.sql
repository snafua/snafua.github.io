create procedure "_SWA"."QuickEditAvailabilities"( 
  in @RowIds long varchar ) 
result( 
  "AvailabilityId" integer,
  "Availability" char(128) ) 
begin
  declare @CurrentDate date;
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowIds,'VesselId');
  set @CurrentDate = current utc timestamp;
  call "SWA"."QuickEditAvailabilities"(@VesselId,@CurrentDate)
end