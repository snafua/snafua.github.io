create procedure "_PEM"."WorkItemsReportsDeficiencyProgress"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemId" integer,
  "WorkItemReportId" integer,
  "WorkItemNumber" char(25),
  "WorkItemReportType" char(20),
  "WorkItemReportNumber" char(25),
  "WorkItemReportTitle" char(128),
  "WorkItemTitle" char(128),
  "DeficiencyStatus" char(15),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReturned" date,
  "WorkItemReportDateDue" date,
  "ReferencePageNumber" char(15),
  "ReferenceParagraphNumber" char(15),
  "ReferenceLineNumber" char(15),
  "HasReportText" bit,
  "HasReportResponse" bit,
  "FlagReport" integer,
  "HasAttachments" bit ) 
begin
  call "PEM"."WorkItemsReportsDeficiencyProgress"(@VesselId,@ContractId)
end