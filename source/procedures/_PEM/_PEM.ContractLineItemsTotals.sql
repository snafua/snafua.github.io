create procedure "_PEM"."ContractLineItemsTotals"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "TotalDollarsRequested" numeric(15,2),
  "TotalDollarsUsed" numeric(15,2),
  "TotalDollarsAvailable" numeric(15,2),
  "FlagLineItems" integer ) 
begin
  call "PEM"."ContractLineItemsTotals"(@VesselId,@ContractId)
end