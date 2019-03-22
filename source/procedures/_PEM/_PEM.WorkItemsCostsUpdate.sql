create procedure "_PEM"."WorkItemsCostsUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @WorkItemNumber char(25),
  in @EstLaborRate numeric(15,2),
  in @EstLaborHours numeric(15,2),
  in @EstOtherDollars numeric(15,2),
  in @EstLineItemsDollars numeric(15,2),
  in @AwdLaborRate numeric(15,2),
  in @AwdLaborHours numeric(15,2),
  in @AwdOtherDollars numeric(15,2),
  in @AwdLineItemsDollars numeric(15,2) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @EstLaborTotal numeric(15,2);
  declare @EstGrandTotal numeric(15,2);
  declare @AwdLaborTotal numeric(15,2);
  declare @AwdGrandTotal numeric(15,2);
  declare @ActualRFPTotal numeric(15,2);
  declare @ActualTotalDollars numeric(15,2);
  set @EstLaborTotal = @EstLaborRate*@EstLaborHours;
  set @EstGrandTotal = @EstLaborTotal+@EstOtherDollars+@EstLineItemsDollars;
  set @AwdLaborTotal = @AwdLaborHours*@AwdLaborRate;
  set @AwdGrandTotal = @AwdLaborTotal+@AwdOtherDollars+@AwdLineItemsDollars;
  call "PEM"."WorkItemsCostsUpdate"(@VesselId,@ContractId,@WorkItemId,@WorkItemNumber,@EstLaborRate,@EstLaborHours,@EstLaborTotal,@EstOtherDollars,@EstLineItemsDollars,@EstGrandTotal,@AwdLaborRate,@AwdLaborHours,@AwdLaborTotal,@AwdOtherDollars,@AwdLineItemsDollars,@AwdGrandTotal)
end