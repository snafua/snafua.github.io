create procedure "_PEM"."WorkItemsModificationsExpenditureTypeSummary"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "AccountDescription" char(128),
  "EstimatedTotalDollars" numeric(15,2),
  "ProposedTotalDollars" numeric(15,2),
  "NegotiatedTotalDollars" numeric(15,2) ) 
begin
  call "PEM"."WorkItemsModificationsExpenditureTypeSummary"(@VesselId,@ContractId)
end