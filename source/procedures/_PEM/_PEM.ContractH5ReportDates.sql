create procedure --B-20205 
--RJM
"_PEM"."ContractH5ReportDates"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "Quarter1StartDate" date,
  "Quarter1EndDate" date,
  "Quarter2StartDate" date,
  "Quarter2EndDate" date,
  "Quarter3StartDate" date,
  "Quarter3EndDate" date,
  "Quarter4StartDate" date,
  "Quarter4EndDate" date ) 
begin
  /*
2018-11-30 RJM Adjust Contract Start and End dates so all RFP's are included in H5 Report
*/
  call "PEM"."ContractH5ReportDates"(@VesselId,@ContractId)
end