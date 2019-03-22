create procedure "_PEM"."WorkItemModificationEstimatedOtherDirectCosts"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "WorkItemModCostId" integer,
  "OtherDirectCostType" char(25),
  "Description" char(128),
  "UnitOfMeasure" char(25),
  "QuantityRequired" integer,
  "UnitPrice" numeric(15,2),
  "TotalPrice" numeric(15,2),
  "FlagCost" integer ) 
begin
  call "PEM"."WorkItemModificationEstimatedOtherDirectCosts"(@VesselId,@WorkItemId,@WorkItemModId)
end