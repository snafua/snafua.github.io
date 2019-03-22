create procedure "_PEM"."WorkItemsProgressSummary"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ContractAwardedTotalDollars" numeric(15,2),
  "ContractAGRUsedDollars" numeric(15,2),
  "ContractUsedTotalDollars" numeric(15,2),
  "ContractWorkProgress" numeric(15,2),
  "ContractDurationProgress" numeric(15,2),
  "ProgressLastUpdated" date,
  "FlagPrintExportBrowse" integer,
  "FlagPrintHistory" integer,
  "FlagShowAll" integer,
  "FlagRFPOnly" integer,
  "FlagWIOnly" integer,
  "FlagDelete" integer,
  "FlagLastUpdate" integer ) 
begin
  call "PEM"."WorkItemsProgressSummary"(@VesselId,@ContractId)
end