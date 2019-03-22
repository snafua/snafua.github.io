create procedure "_PEM"."WorkItemReportDeficiencyDetails"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "WorkItemReportNumber" integer,
  "WorkItemReportTitle" char(128),
  "WorkItemTitle" char(128),
  "WorkItemNumber" char(25),
  "WorkItemReportType" char(20),
  "WorkItemReportDeficientyStatus" char(15),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "WorkItemDateDue" date,
  "ReferencePageNumber" char(15),
  "ReferenceParagraphNumber" char(15),
  "ReferenceLineNumber" char(15),
  "WorkItemReportText" long varchar,
  "WorkItemReportResponse" long varchar,
  "HasAttachments" bit ) 
begin
  call "PEM"."WorkItemReportDeficiencyDetails"(@VesselId,@WorkItemId,@WorkItemReportId)
end