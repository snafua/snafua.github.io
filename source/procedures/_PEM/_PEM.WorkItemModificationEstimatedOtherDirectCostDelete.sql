create procedure "_PEM"."WorkItemModificationEstimatedOtherDirectCostDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemModCostId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationEstimatedOtherDirectCostDelete"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemModCostId)
end