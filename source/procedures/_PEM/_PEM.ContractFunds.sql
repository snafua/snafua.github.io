create procedure "_PEM"."ContractFunds"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "CatABidPrice" numeric(15,2),
  "CatBBitPrice" numeric(15,2),
  "AGRBidPrice" numeric(15,2),
  "ContractValue" numeric(15,2),
  "AwardPrice" numeric(15,2),
  "CatBUsed" numeric(15,2),
  "AGRUsed" numeric(15,2),
  "CreditAmount" numeric(15,2),
  "CurrentPrice" numeric(15,2),
  "CatBAvailable" numeric(15,2),
  "AGRAvailable" numeric(15,2),
  "CreditAvailable" numeric(15,2),
  "AvailableFunds" numeric(15,2),
  "GrowthPrecentage" numeric(6,2),
  "NetGrowthPercentage" numeric(6,2),
  "FlagFunds" integer,
  "FlagTotalExpenditures" integer,
  "FlagGrowth" integer ) 
begin
  call "PEM"."ContractFunds"(@VesselId,@ContractId)
end