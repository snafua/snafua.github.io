create procedure "_PNG"."MaterialOrderRequestsStatusReportHeaders"( 
  in @VesselId integer,
  in @AvailabilityId integer,
  in @ServiceOrderId integer default null ) 
result( 
  "VesselId" integer,
  "AvailabilityId" integer,
  "ContractId" integer,
  "WorkbookName" char(128),
  "WorksheetName" char(30),
  "VesselName" char(128),
  "AvailabilityName" char(128),
  "AvailabilityStartDate" char(10),
  "PortEngineerName" char(128),
  "ShipyardName" char(128),
  "ContractNumber" char(50) ) 
begin
  call "PNG"."MaterialOrderRequestsStatusReportHeaders"(@VesselId,@AvailabilityId,@ServiceOrderId)
end