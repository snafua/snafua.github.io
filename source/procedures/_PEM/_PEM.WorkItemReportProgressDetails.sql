create procedure --AIM
"_PEM"."WorkItemReportProgressDetails"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "WorkItemModificationId" integer,
  "WorkItemReportNumber" integer,
  "WorkItemReportTitle" char(128),
  "WorkItemNumber" char(25),
  "WorkItemTitle" char(128),
  "WorkItemReportType" char(20),
  "WorkItemModificationNumber" integer,
  "DeficiencyStatus" char(15),
  "Contractor" char(128),
  "WorkItemReportDateIssued" date,
  "WorkItemReportDateReported" date,
  "ProgressRespondByDate" date,
  "ProgressStartDate" date,
  "ProgressEndDate" date,
  "WorkItemReportText" long varchar,
  "WorkItemReportResponse" long varchar,
  "HasAttachments" bit ) 
begin
  /*
2018-09-21 AIM E-04139 D-04139
*/
  call "PEM"."WorkItemReportProgressDetails"(@VesselId,@WorkItemId,@WorkItemReportId)
end