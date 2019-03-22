create procedure "_PEM"."WorkItemsModificationsTotals"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemsModificationsOpen" integer,
  "WorkItemsModificationsIssued" integer,
  "WorkItemsModificationsSettled" integer,
  "WorkItemsModificationsInNegotiation" integer,
  "WorkItemsModificationsCanceled" integer,
  "WorkItemsModificationsTotal" integer,
  "FlagWorkItemsModifications" integer,
  "FlagModificationsEstimates" integer,
  "FlagModificationsProposed" integer,
  "FlagModificationsNegotiated" integer,
  "FlagModificationsDates" integer ) 
begin
  call "PEM"."WorkItemsModificationsTotals"(@VesselId,@ContractId)
end