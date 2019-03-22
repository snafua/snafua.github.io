create procedure "_PEM"."AvailabilityCompletionReport"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "Report" long binary ) 
begin
  call "PEM"."AvailabilityCompletionReport"(@VesselId,@ContractId)
end