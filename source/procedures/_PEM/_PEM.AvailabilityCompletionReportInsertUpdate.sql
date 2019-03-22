create procedure "_PEM"."AvailabilityCompletionReportInsertUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @Report long binary ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."AvailabilityCompletionReportInsertUpdate"(@VesselId,@ContractId,@Report)
end