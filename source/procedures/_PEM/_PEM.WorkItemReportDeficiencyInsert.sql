create procedure "_PEM"."WorkItemReportDeficiencyInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportTitle char(128),
  in @WorkItemReportDeficiencyStatus char(15),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @WorkItemReportDateDue date,
  in @ReferencePageNumber char(15),
  in @ReferenceParagraphNumber char(15),
  in @ReferenceLineNumber char(15) ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportDeficiencyInsert"(@VesselId,@WorkItemId,@WorkItemReportTitle,@WorkItemReportDeficiencyStatus,@WorkItemReportDateIssued,
  @WorkItemReportDateReturned,@WorkItemReportDateDue,@ReferencePageNumber,@ReferenceParagraphNumber,@ReferenceLineNumber)
end