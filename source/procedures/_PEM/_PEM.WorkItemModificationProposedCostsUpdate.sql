create procedure --JBH
"_PEM"."WorkItemModificationProposedCostsUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @ProposedLaborHours numeric(15,2),
  in @ProposedAGRLaborRate bit,
  in @ProposedLaborRate numeric(15,2),
  in @ProposedOtherDollars numeric(15,2),
  in @ProposedAdminDollars numeric(15,2),
  in @ProposedProfitDollars numeric(15,2),
  in @ProposedSubcontractorDollars numeric(15,2) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-10-18 B-19883 JBH:  Added ProposedSubcontractorDollars
*/
  call "PEM"."WorkItemModificationProposedCostsUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@ProposedLaborHours,@ProposedAGRLaborRate,
  @ProposedLaborRate,@ProposedOtherDollars,@ProposedAdminDollars,@ProposedProfitDollars,@ProposedSubcontractorDollars)
end