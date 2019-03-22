create procedure "_PEM"."WorkItemsEstimatedTotalCostBySWBS"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "SWBS" char(4),
  "SWBSTitle" char(128),
  "EstimatedTotalDollars" numeric(15,2) ) 
begin
  call "PEM"."WorkItemsEstimatedTotalCostBySWBS"(@VesselId,@ContractId)
end