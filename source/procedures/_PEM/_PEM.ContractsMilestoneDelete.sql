create procedure "_PEM"."ContractsMilestoneDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @MilestoneId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractsMilestoneDelete"(@VesselId,@ContractId,@MilestoneId)
end