create procedure "_SWA"."EstimatedCostSummarySections"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "SWBS" char(4),
  "SWBSDesc" char(128),
  "Cost" decimal(15,2) ) 
begin
  call "SWA"."EstimatedCostSummarySections"(@VesselId,@ContractId)
end