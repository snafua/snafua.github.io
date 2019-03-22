create procedure "_PNG"."VoyageRepairRequestContracts"( 
  in @VesselId integer,
  in @AvailabilityId integer,
  in @ContractId integer default null,
  in @WorkPackId integer default null ) 
result( 
  "ContractId" integer,
  "Contract" char(50),
  "ContractType" char(15) ) 
begin
  if(@WorkPackId is not null) then
    set @ContractId = @WorkPackId
  end if;
  if(@AvailabilityId = 0) then
    set @AvailabilityId = null
  end if;
  call "PNG"."VoyageRepairRequestContracts"(@VesselId,@AvailabilityId,@ContractId)
end