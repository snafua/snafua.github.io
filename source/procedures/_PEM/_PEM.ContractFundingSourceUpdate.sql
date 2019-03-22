create procedure "_PEM"."ContractFundingSourceUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @FundingId integer,
  in @FundingDescription char(128),
  in @DefaultFunding bit ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @Success bit;
  declare @ErrorMessage char(256);
  call "PEM"."ContractFundingSourceUpdate"(@VesselId,@ContractId,@FundingId,@FundingDescription,@DefaultFunding);
  select @Success as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select @Success as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end