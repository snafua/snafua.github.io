create procedure "_PEM"."ContractSituationReport"( 
  in @VesselId integer,
  in @ContractId integer,
  in @SituationReportId integer ) 
result( 
  "SituationReport" long varchar ) 
begin
  call "PEM"."ContractSituationReport"(@VesselId,@ContractId,@SituationReportId)
end