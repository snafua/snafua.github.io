create procedure "_PEM"."ContractPortEngineers"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "PersonFullName" char(256),
  "PersonId" integer ) 
begin
  call "PEM"."ContractPortEngineers"(@VesselId,@ContractId)
end