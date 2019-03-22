create procedure "_PEM"."WorkItemModificationRateTypes"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @CostType char(15) ) 
result( 
  "AGRLaborRate" bit,
  "RateTypeDescription" char(20),
  "LaborRate" numeric(15,2) ) 
begin
  call "PEM"."WorkItemModificationRateTypes"(@VesselId,@WorkItemId,@WorkItemModId,@CostType)
end