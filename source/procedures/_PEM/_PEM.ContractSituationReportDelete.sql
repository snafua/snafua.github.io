create procedure "_PEM"."ContractSituationReportDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @SituationReportId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractSituationReportDelete"(@VesselId,@ContractId,@SituationReportId)
end