create procedure --AIM
"_PEM"."WorkItemReportProgressUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @WorkItemReportTitle char(128),
  in @WorkItemModId integer,
  in @Contractor char(128),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @ProgressRespondByDate date,
  in @ProgressStartDate date,
  in @ProgressendDate date,
  in @WorkItemReportText long varchar,
  in @WorkItemReportResponse long varchar,
  in @NewWorkItemId integer default null,
  in @DeficiencyStatus char(15) default null ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-06-11 JHM - E-04046 Added support for assignment to a different work item
2018-09-21 AIM E-04139 D-04139
*/
  call "PEM"."WorkItemReportProgressUpdate"(@VesselId,@WorkItemId,@WorkItemReportId,@WorkItemReportTitle,@WorkItemModId,@Contractor,
  @WorkItemReportDateIssued,@WorkItemReportDateReturned,@ProgressRespondByDate,@ProgressStartDate,@ProgressEndDate,
  @WorkItemReportText,@WorkItemReportResponse,@NewWorkItemId,@DeficiencyStatus)
end