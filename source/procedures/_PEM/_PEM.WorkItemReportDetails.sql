create procedure "_PEM"."WorkItemReportDetails"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @ReportId integer ) 
result( 
  "ReportId" integer,
  "ReportTitle" char(128),
  "DateIn" date,
  "DateOut" date,
  "WorkItemNumber" integer,
  "WorkItemTitle" char(25),
  "ReportType" char(128),
  "Contractor" char(128) ) 
begin
  call "PEM"."WorkItemReportDetails"(@VesselId,@ContractId,@WorkItemId,@ReportId)
end