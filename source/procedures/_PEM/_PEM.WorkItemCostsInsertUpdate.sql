create procedure "_PEM"."WorkItemCostsInsertUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @EstimatedLaborRate numeric(15,2) default null,
  in @EstimatedLaborHours numeric(15,2) default null,
  in @EstimatedOtherDollars numeric(15,2) default null,
  in @AwardedLaborRate numeric(15,2) default null,
  in @AwardedLaborHours numeric(15,2) default null,
  in @AwardedOtherDollars numeric(15,2) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemCostsInsertUpdate"(@VesselId,@WorkItemId,@EstimatedLaborRate,@EstimatedLaborHours,@EstimatedOtherDollars,@AwardedLaborRate,@AwardedLaborHours,@AwardedOtherDollars)
end