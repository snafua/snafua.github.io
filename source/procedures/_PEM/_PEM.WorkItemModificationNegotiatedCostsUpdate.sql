create procedure --JBH
"_PEM"."WorkItemModificationNegotiatedCostsUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @NegotiatedLaborHours numeric(15,2),
  in @NegotiatedAGRLaborRate bit,
  in @NegotiatedLaborRate numeric(15,2),
  in @NegotiatedOtherDollars numeric(15,2),
  in @NegotiatedAdminDollars numeric(15,2),
  in @NegotiatedProfitDollars numeric(15,2),
  in @NegotiatedSubcontractorDollars numeric(15,2) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-10-18 B-19883 JBH:  Added Negotiated SubcontractorDollars
*/
  call "PEM"."WorkItemModificationNegotiatedCostsUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@NegotiatedLaborHours,@NegotiatedAGRLaborRate,
  @NegotiatedLaborRate,@NegotiatedOtherDollars,@NegotiatedAdminDollars,@NegotiatedProfitDollars,@NegotiatedSubcontractorDollars)
end