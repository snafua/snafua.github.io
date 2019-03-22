create procedure "_PEM"."WorkItemModificationsCostSummary"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer ) 
result( 
  "WorkItemModNumber" char(10),
  "WorkItemModTitle" char(128),
  "WorkItemModStatus" char(25),
  "WorkItemModType" char(5),
  "Progress" numeric(15,2),
  "EstimatedCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "FlagCreateRFP" integer,
  "FlagRFPList" integer ) 
begin
  call "PEM"."WorkItemModificationsCostsummary"(@VesselId,@ContractId,@WorkItemId)
end