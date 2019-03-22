create procedure "_PEM"."WorkItemLineItems"( 
  in @VesselId integer,
  in @WorkItemId integer ) 
result( 
  "LineItemNumber" integer,
  "ReferenceNumber" char(10),
  "LineItemDescription" char(128),
  "UnitOfMeasure" char(25),
  "UnitPrice" numeric(15,2),
  "QuantityRequested" integer,
  "QuantityUsed" integer,
  "QuantityAvailable" integer,
  "TotalDollarsRequested" numeric(15,2),
  "TotalDollarsUsed" numeric,
  "FlagLineItem" integer ) 
begin
  call "PEM"."WorkItemLineItems"(@VesselId,@WorkItemId)
end