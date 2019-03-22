create procedure "_PEM"."WorkItemReports"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportType char(20) default null,
  in @DisplayAll bit default 0 ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportId" integer,
  "WorkItemNumber" char(25),
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" char(25),
  "WorkItemReportTitle" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "FlagReport" integer,
  "HasAttachments" bit ) 
begin
  call "PEM"."WorkItemReports"(@VesselId,@WorkItemId,@WorkItemReportType,@DisplayAll)
end