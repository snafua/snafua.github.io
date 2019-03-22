create procedure --JBH
"_PEM"."WorkItemsModifications"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemModId" integer,
  "WorkItemModNumber" char(10),
  "WorkItemNumber" char(25),
  "WorkItemCategory" char(5),
  "WorkItemModTitle" char(128),
  "WorkItemModClassification" char(50),
  "WorkItemModStatus" char(25),
  "WorkItemModProgress" integer,
  "WorkItemModIssuedDate" date,
  "WorkItemModResponseDate" date,
  "WorkItemModSettledDate" date,
  "EstimatedAGRLaborRate" bit,
  "EstimatedLaborType" char(20),
  "EstimatedLaborRate" numeric(15,2),
  "EstimatedLaborHours" numeric(15,2),
  "EstimatedLaborDollars" numeric(15,2),
  "EstimatedOtherDollars" numeric(15,2),
  "EstimatedAdminDollars" numeric(15,2),
  "EstimatedProfitDollars" numeric(15,2),
  "EstimatedLineItemDollars" numeric(15,2),
  "EstimatedTotalDollars" numeric(15,2),
  "ProposedAGRLaborRate" bit,
  "ProposedLaborType" char(20),
  "ProposedLaborRate" numeric(15,2),
  "ProposedLaborHours" numeric(15,2),
  "ProposedLaborDollars" numeric(15,2),
  "ProposedOtherDollars" numeric(15,2),
  "ProposedAdminDollars" numeric(15,2),
  "ProposedProfitDollars" numeric(15,2),
  "ProposedLineItemDollars" numeric(15,2),
  "ProposedTotalDollars" numeric(15,2),
  "NegotiatedAGRLaborRate" bit,
  "NegotiatedLaborType" char(20),
  "NegotiatedLaborRate" numeric(15,2),
  "NegotiatedLaborHours" numeric(15,2),
  "NegotiatedLaborDollars" numeric(15,2),
  "NegotiatedOtherDollars" numeric(15,2),
  "NegotiatedAdminDollars" numeric(15,2),
  "NegotiatedProfitDollars" numeric(15,2),
  "NegotiatedLineItemDollars" numeric(15,2),
  "NegotiatedTotalDollars" numeric(15,2),
  "WorkItemModSpecification" long varchar,
  "WorkItemModDetermination" long varchar,
  "FlagModification" integer,
  "EstimatedSubcontractorDollars" numeric(15,2),
  "ProposedSubcontractorDollars" numeric(15,2),
  "NegotiatedSubcontractorDollars" numeric(15,2) ) 
begin
  /*
2018-10-22 B-19883 JBH:  Added EstimatedSubcontractorDollars, ProposedSubcontractorDollars, and NegotiatedSubcontractorDollars
*/
  call "PEM"."WorkItemsModifications"(@VesselId,@ContractId)
end