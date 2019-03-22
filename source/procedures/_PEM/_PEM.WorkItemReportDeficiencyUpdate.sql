create procedure "_PEM"."WorkItemReportDeficiencyUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @WorkItemReportTitle char(128),
  in @DeficiencyStatus char(15),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @DeficiencyDueDate date,
  in @ReferencePageNumber char(15),
  in @ReferenceParagraphNumber char(15),
  in @ReferenceLineNumber char(15),
  in @WorkItemReportText long varchar,
  in @WorkItemReportResponse long varchar,
  in @NewWorkItemId integer default null ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportDeficiencyUpdate"(@VesselId,@WorkItemId,@WorkItemReportId,@WorkItemReportTitle,@DeficiencyStatus,@WorkItemReportDateIssued,
  @WorkItemReportDateReturned,@DeficiencyDueDate,@ReferencePageNumber,@ReferenceParagraphNumber,@ReferenceLineNumber,@WorkItemReportText,@WorkItemReportResponse,
  @NewWorkItemId)
end