create procedure "_PAV"."WorkItemLineItemsExport"( 
  in @WorkItemRowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "LineItemRowId" char(1024),
  "ReferenceNumber" char(20),
  "Description" char(256),
  "EstimateBasis" char(50),
  "QuantityRequested" integer,
  "UnitOfMeasure" char(50),
  "UnitPrice" numeric(15,2),
  "LineItemPermissions" integer,
  "Total" numeric(15,2) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@WorkItemRowId,'WorkItemId');
  call "PAV"."WorkItemLineItems"(@VesselId,@WorkItemId,@ApplicationId,0)
end