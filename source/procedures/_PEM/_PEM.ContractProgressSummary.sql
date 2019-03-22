create procedure "_PEM"."ContractProgressSummary"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ProgressDate" date,
  "WorkProgressPercentage" numeric(15,2),
  "TimeProgressPercentage" integer ) 
begin
  call "PEM"."ContractProgressSummary"(@VesselId,@ContractId)
end