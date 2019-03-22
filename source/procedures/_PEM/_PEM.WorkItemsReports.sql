create procedure "_PEM"."WorkItemsReports"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemReportType char(20) default null ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportId" integer,
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" integer,
  "WorkItemNumber" char(25),
  "WorkItemTitle" char(128),
  "WorkItemReportTitle" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "FlagReport" integer,
  "HasAttachments" bit ) 
begin
  call "PEM"."WorkItemsReports"(@VesselId,@ContractId,@WorkItemReportType)
end