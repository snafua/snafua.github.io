create procedure "_PEM"."ContractSummary"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "UnsettledModificationDollars" numeric(15,2),
  "NonModificationCatBDollars" numeric(15,2),
  "SettledDebitModificationDollars" numeric(15,2),
  "SettledCreditModificationDollars" numeric(15,2),
  "AGRHoursBasedOnDollars" integer ) 
begin
  call "PEM"."ContractSummary"(@VesselId,@ContractId)
end