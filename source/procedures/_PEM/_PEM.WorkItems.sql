create procedure "_PEM"."WorkItems"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemNumber" char(25),
  "WorkItemCategory" char(5),
  "WorkItemTitle" char(128),
  "WorkItemProgress" integer,
  "EstimatedLaborRate" numeric(15,2),
  "EstimatedLaborHours" numeric(15,2),
  "EstimatedLaborTotal" numeric(15,2),
  "EstimatedOtherDollars" numeric(15,2),
  "EstimatedLineItemDollars" numeric(15,2),
  "EstimatedTotalDollars" numeric(15,2),
  "AwardedLaborRate" numeric(15,2),
  "AwardedLaborHours" numeric(15,2),
  "AwardedLaborTotal" numeric(15,2),
  "AwardedOtherDollars" numeric(15,2),
  "AwardedGrandTotal" numeric(15,2),
  "ActualRFPTotal" numeric(15,2),
  "ActualTotalDollars" numeric(15,2),
  "EstimateId" integer,
  "SpecificationId" integer,
  "FlagEstimatedLabor" integer,
  "FlagEstimatedODC" integer,
  "FlagEstimatedLineItem" integer,
  "FlagAwardedLabor" integer,
  "FlagAwardedODC" integer,
  "FlagAwardedLineItem" integer,
  "FlagActuals" integer,
  "FlagWorkItem" integer ) 
begin
  call "PEM"."WorkItems"(@VesselId,@ContractId)
end