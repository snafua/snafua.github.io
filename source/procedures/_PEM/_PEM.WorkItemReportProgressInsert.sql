create procedure --AIM
"_PEM"."WorkItemReportProgressInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportTitle char(128),
  in @WorkItemModificationId integer,
  in @Contractor char(128),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @ProgressRespondByDate date,
  in @ProgressStartDate date,
  in @ProgressEndDate date,
  in @DeficiencyStatus char(15) default null ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  /*
2018-09-21 AIM E-04139 D-04139
*/
  call "PEM"."WorkItemReportProgressInsert"(@VesselId,@WorkItemId,@WorkItemReportTitle,@WorkItemModificationId,@Contractor,
  @WorkItemReportDateIssued,@WorkItemReportDateReturned,@ProgressRespondByDate,@ProgressStartDate,@ProgressEndDate,@DeficiencyStatus)
end