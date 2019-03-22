create procedure "_TAE"."ExecutionWorkPackages"( 
  in @RowId char(1024),
  in @AvailabilityId integer,
  in @ContractId integer ) 
result( 
  "ContractId" integer,
  "Contract" char(25),
  "ContractType" char(15) ) 
begin
  call "TAE"."ExecutionWorkPackages"(@RowId,@AvailabilityId,@ContractId)
end