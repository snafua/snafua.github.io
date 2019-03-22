create procedure --JBH
"_PEM"."WorkItemModificationEstimateDetails"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "WorkItemModRemarks" long varchar,
  "EstimatedAdminDollars" numeric(15,2),
  "EstimatedProfitDollars" numeric(15,2),
  "EstimatedLaborRate" numeric(15,2),
  "EstimatedLaborDollars" numeric(15,2),
  "EstimatedOtherDollars" numeric(15,2),
  "EstimatedTotalDollars" numeric(15,2),
  "FlagTrade" integer,
  "FlagCost" integer,
  "FlagAdmin" integer,
  "FlagProfit" integer,
  "FlagRemarks" integer,
  "EstimatedSubcontractorDollars" numeric(15,2) ) 
begin
  /*
2018-10-22 B-19883 JBH:  Added EstimatedSubcontractorDollars
*/
  call "PEM"."WorkItemModificationEstimateDetails"(@VesselId,@WorkItemId,@WorkItemModId)
end