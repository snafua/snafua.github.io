create procedure "_PEM"."ContractExpenditures"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "FundingId" integer,
  "ProjectCode" char(25),
  "TaskCode" char(25),
  "ExpenditureType" char(10),
  "TotalFunding" numeric(15,2),
  "WorkItemAwardedDollars" numeric(15,2),
  "SettledModificationDollars" numeric(15,2),
  "TotalExpenditures" numeric(15,2),
  "AvailableDollars" numeric(15,2),
  "EstimateModificationDollars" numeric(15,2),
  "FlagTotalExpenditures" integer ) 
begin
  call "PEM"."ContractExpenditures"(@VesselId,@ContractId)
end