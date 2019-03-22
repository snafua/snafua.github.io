create procedure "_PEM"."AvailabilityCompletionReportDelete"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."AvailabilityCompletionReportDelete"(@VesselId,@ContractId)
end