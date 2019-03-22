create procedure --JBH
"_PEM"."WorkItemModificationEstimateDetailsUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemModRemarks long varchar,
  in @EstimatedAdminDollars numeric(15,2),
  in @EstimatedProfitDollars numeric(15,2) ) 
result( 
  "Success" bit,
  "ErrorMesssage" char(256) ) 
begin
  /*
2018-10-22 B-19883 JBH:  Added SubcontractorDollars
2019-02-04 B-20744 JBH:  Removed SubcontractorDollars
*/
  call "PEM"."WorkItemModificationEstimateDetailsUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemModRemarks,@EstimatedAdminDollars,@EstimatedProfitDollars)
end