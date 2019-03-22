create procedure "_TAE"."WorkPackages"( 
  in @RowId char(1024),
  in @AvailabilityId integer,
  in @ContractId integer ) 
result( 
  "ContractId" integer,
  "Contract" char(25),
  "ContractType" char(15) ) 
begin
  call "TAE"."WorkPackages"(@RowId,@AvailabilityId,@ContractId)
end