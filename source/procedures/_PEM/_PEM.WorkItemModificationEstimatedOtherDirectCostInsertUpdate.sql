create procedure "_PEM"."WorkItemModificationEstimatedOtherDirectCostInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemModCostId integer default null,
  in @OtherDirectCostType char(25),
  in @Description char(128),
  in @UnitOfMeasure char(25),
  in @QuantityRequired integer,
  in @UnitPrice numeric(15,2) ) 
result( 
  "WorkItemModCostId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationEstimatedOtherDirectCostInsertUpdate"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemModCostId,
  @OtherDirectCostType,@Description,@UnitOfMeasure,@QuantityRequired,@UnitPrice)
end