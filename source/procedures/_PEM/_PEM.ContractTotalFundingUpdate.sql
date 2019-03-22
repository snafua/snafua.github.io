create procedure "_PEM"."ContractTotalFundingUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @FundingId integer,
  in @ExpenditureType char(10),
  in @TotalFunding numeric(15,2) ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractTotalFundingUpdate"(@VesselId,@ContractId,@FundingId,@ExpenditureType,@TotalFunding)
end