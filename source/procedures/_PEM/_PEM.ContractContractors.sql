create procedure "_PEM"."ContractContractors"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "EntityId" integer,
  "EntityName" char(128) ) 
begin
  call "PEM"."ContractContractors"(@VesselId,@ContractId)
end