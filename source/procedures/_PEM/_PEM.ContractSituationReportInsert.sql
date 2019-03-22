create procedure -- JHM
"_PEM"."ContractSituationReportInsert"( 
  in @VesselId integer,
  in @ContractId integer,
  in @SituationReportDate date,
  in @PENGVersion char(12) default '2.0' ) 
result( 
  "SituationReportId" integer,
  "SituationReportNumber" integer,
  "SituationReport" long varchar,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-06-11 JHM - E-04142 Added @PENGVersion to control whether the text reads RFP or CCO
*/
  if(@PENGVersion is null) then
    set @PENGVersion = '2.0'
  end if;
  call "PEM"."ContractSituationReportInsert"(@VesselId,@ContractId,@SituationReportDate,@PENGVersion)
end