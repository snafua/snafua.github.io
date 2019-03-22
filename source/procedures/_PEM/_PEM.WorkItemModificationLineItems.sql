create procedure "_PEM"."WorkItemModificationLineItems"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "LineItemNumber" integer,
  "ReferenceNumber" char(10),
  "Description" char(128),
  "UnitOfMeasure" char(25),
  "QuantityRequested" integer,
  "UnitPrice" numeric(15,2),
  "TotalDollarsRequested" numeric(15,2),
  "QuantityUsed" integer,
  "TotalDollarsUsed" numeric(15,2),
  "QuantityAvailable" integer,
  "QuantityAllocated" integer,
  "ModificationDollarsUsed" numeric(15,2),
  "FlagLineItem" integer ) 
begin
  call "PEM"."WorkItemModificationLineItems"(@VesselId,@WorkItemId,@WorkItemModId)
end