create procedure "_PEM"."WorkItemProgressDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @ProgressDate date ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemProgressDelete"(@VesselId,@ContractId,@ProgressDate)
end