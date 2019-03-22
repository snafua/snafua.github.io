create procedure "_PEM"."WorkItemLineItemReports"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @LineItemNumber integer ) 
result( 
  "WorkItemReportId" integer,
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" integer,
  "WorkItemReportTitle" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date ) 
begin
  call "PEM"."WorkItemLineItemReports"(@VesselId,@WorkItemId,@LineItemNumber)
end