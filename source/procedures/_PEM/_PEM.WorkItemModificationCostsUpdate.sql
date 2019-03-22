create procedure --JBH
"_PEM"."WorkItemModificationCostsUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemModTitle char(128),
  in @WorkItemModClassificationCode char(5),
  in @WorkItemModStatus char(25),
  in @WorkItemModIssuedDate date,
  in @WorkItemModResponseDate date,
  in @WorkItemModSettledDate date,
  in @ProposedAGRLaborRate bit,
  in @ProposedLaborRate numeric(15,2),
  in @ProposedLaborHours numeric(15,2),
  in @ProposedOtherDollars numeric(15,2),
  in @ProposedAdminDollars numeric(15,2),
  in @ProposedProfitDollars numeric(15,2),
  in @NegotiatedAGRLaborRate bit,
  in @NegotiatedLaborRate numeric(15,2),
  in @NegotiatedLaborHours numeric(15,2),
  in @NegotiatedOtherDollars numeric(15,2),
  in @NegotiatedAdminDollars numeric(15,2),
  in @NegotiatedProfitDollars numeric(15,2),
  in @ProposedSubcontractorDollars numeric(15,2) default null,
  in @NegotiatedSubcontractorDollars numeric(15,2) default null ) 
result( 
  "VesselId" integer,
  "WorkItemId" integer,
  "WorkItemModId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-10-18 B-19883 JBH:  Added ProposedSubcontractorDollars and NegotiatedSubcontractorDollars
*/
  call "PEM"."WorkItemModificationCostsUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemModTitle,@WorkItemModClassificationCode,
  @WorkItemModStatus,@WorkItemModIssuedDate,@WorkItemModResponseDate,@WorkItemModSettledDate,@ProposedAGRLaborRate,@ProposedLaborRate,
  @ProposedLaborHours,@ProposedOtherDollars,@ProposedAdminDollars,@ProposedProfitDollars,@NegotiatedAGRLaborRate,@NegotiatedLaborRate,
  @NegotiatedLaborHours,@NegotiatedOtherDollars,@NegotiatedAdminDollars,@NegotiatedProfitDollars,@ProposedSubcontractorDollars,
  @NegotiatedSubcontractorDollars)
end