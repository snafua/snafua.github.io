create procedure "_PEM"."ContractFundingSourceInsert"( 
  in @VesselId integer,
  in @ContractId integer,
  in @ProjectCode char(25),
  in @TaskCode char(25),
  in @FundingDescription char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractFundingSourceInsert"(@VesselId,@ContractId,@ProjectCode,@TaskCode,@FundingDescription)
end