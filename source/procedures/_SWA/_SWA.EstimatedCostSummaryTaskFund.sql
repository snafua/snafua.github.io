create procedure "_SWA"."EstimatedCostSummaryTaskFund"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ProjTaskFund" char(128),
  "Cost" decimal(15,2) ) 
begin
  call "SWA"."EstimatedCostSummaryTaskFund"(@VesselId,@ContractId)
end