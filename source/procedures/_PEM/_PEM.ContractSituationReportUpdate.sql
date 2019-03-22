create procedure "_PEM"."ContractSituationReportUpdate"( 
  in @VesselId integer,
  in @ContractId integer,
  in @SituationReportId integer,
  in @SituationReportDate date,
  in @SituationReport long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."ContractSituationReportUpdate"(@VesselId,@ContractId,@SituationReportId,@SituationReportDate,@SituationReport)
end