create procedure --JBH
"_PEM"."WorkItemModificationEstimatedCostsUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @EstimatedLaborHours numeric(15,2),
  in @EstimatedAGRLaborRate bit,
  in @EstimatedLaborRate numeric(15,2),
  in @EstimatedOtherDollars numeric(15,2),
  in @EstimatedAdminDollars numeric(15,2),
  in @EstimatedProfitDollars numeric(15,2) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-10-18 B-19883 JBH:  AddedEstimated SubcontractorDollars
2019-02-04 B-20744 JBH:  Removed EstimatedSubcontractorDollars
*/
  call "PEM"."WorkItemModificationEstimatedCostsUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@EstimatedLaborHours,@EstimatedAGRLaborRate,
  @EstimatedLaborRate,@EstimatedOtherDollars,@EstimatedAdminDollars,@EstimatedProfitDollars)
end