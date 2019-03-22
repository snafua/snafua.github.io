create procedure "_PEM"."ContractFundingSources"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "FundingId" integer,
  "ProjectCode" char(25),
  "TaskCode" char(25),
  "FundingDescription" char(128),
  "DefaultFunding" bit,
  "CanDelete" integer ) 
begin
  call "PEM"."ContractFundingSources"(@VesselId,@ContractId)
end