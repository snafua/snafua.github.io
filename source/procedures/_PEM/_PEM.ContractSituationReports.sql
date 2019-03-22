create procedure "_PEM"."ContractSituationReports"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "SituationReportId" integer,
  "SituationReportNumber" integer,
  "SituationReportDate" date,
  "FlagReport" integer ) 
begin
  call "PEM"."ContractSituationReports"(@VesselId,@ContractId)
end