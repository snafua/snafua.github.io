create procedure "_PAV"."AvailabilitiesPOAMsReportDetails"( 
  in @RowId long varchar ) 
result( 
  "VesselName" char(80),
  "AvailabilityStartDate" date,
  "AvailabilityDuration" integer,
  "AvailabilityType" char(15),
  "ClassManagerCode" char(50),
  "BidArea" char(50),
  "PortEngineer" char(128) ) 
begin
  declare @VesselId integer;
  declare @AvailabilityId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @AvailabilityId = "SWA"."KeyValuePairParse"(@RowId,'AvailabilityId');
  call "PAV"."AvailabilitiesPOAMsReportDetails"(@VesselId,@AvailabilityId)
end