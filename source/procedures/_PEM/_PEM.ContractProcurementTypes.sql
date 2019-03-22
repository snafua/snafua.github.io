create procedure "_PEM"."ContractProcurementTypes"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "ProcurementType" char(128) ) 
begin
  call "PEM"."ContractProcurementTypes"(@VesselId,@ContractId)
end