create procedure --JBH
"_PEM"."WorkItemModificationCosts"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "EstimatedLaborTypeDescription" char(20),
  "EstimatedAGRLaborRate" bit,
  "EstimatedLaborHours" numeric(15,2),
  "EstimatedLaborRate" numeric(15,2),
  "EstimatedLaborDollars" numeric(15,2),
  "EstimatedOtherDollars" numeric(15,2),
  "EstimatedAdminDollars" numeric(15,2),
  "EstimatedProfitDollars" numeric(15,2),
  "EstimatedTotalDollars" numeric(15,2),
  "ProposedLaborTypeDescription" char(20),
  "ProposedAGRLaborRate" bit,
  "ProposedLaborHours" numeric(15,2),
  "ProposedLaborRate" numeric(15,2),
  "ProposedLaborDollars" numeric(15,2),
  "ProposedOtherDollars" numeric(15,2),
  "ProposedAdminDollars" numeric(15,2),
  "ProposedProfitDollars" numeric(15,2),
  "ProposedTotalDollars" numeric(15,2),
  "NegotiatedLaborTypeDescription" char(20),
  "NegotiatedAGRLaborRate" bit,
  "NegotiatedLaborHours" numeric(15,2),
  "NegotiatedLaborRate" numeric(15,2),
  "NegotiatedLaborDollars" numeric(15,2),
  "NegotiatedOtherDollars" numeric(15,2),
  "NegotiatedAdminDollars" numeric(15,2),
  "NegotiatedProfitDollars" numeric(15,2),
  "NegotiatedTotalDollars" numeric(15,2),
  "FlagEstimated" integer,
  "FlagProposed" integer,
  "FlagNegotiated" integer,
  "EstimatedSubcontractorDollars" numeric(15,2),
  "ProposedSubcontractorDollars" numeric(15,2),
  "NegotiatedSubcontractorDollars" numeric(15,2) ) 
begin
  /*
2018-10-18 B-19883 JBH:  Added EstimatedSubcontractorDollars, ProposedSubcontractorDollars, and NegotiatedSubcontractorDollars
*/
  call "PEM"."WorkItemModificationCosts"(@VesselId,@WorkItemId,@WorkItemModId)
end