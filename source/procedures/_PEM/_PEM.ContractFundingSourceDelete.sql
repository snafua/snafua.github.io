create procedure "_PEM"."ContractFundingSourceDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @FundingId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @Success bit;
  declare @ErrorMessage char(256);
  set @Success = 1;
  set @ErrorMessage = null;
  call "PNG"."ContractsFundingSourcesDelete"(@VesselId,@ContractId,@FundingId);
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