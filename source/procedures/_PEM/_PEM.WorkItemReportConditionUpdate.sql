create procedure "_PEM"."WorkItemReportConditionUpdate"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @ConditionActionId integer,
  in @PortEngineerId integer,
  in @WorkItemReportTitle char(128),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @MachineryHistoryRelevant bit,
  in @WorkItemReportText long varchar,
  in @WorkItemReportResponse long varchar,
  in @NewWorkItemId integer default null ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(156) ) 
begin
  call "PEM"."WorkItemReportConditionUpdate"(@VesselId,@WorkItemId,@WorkItemReportId,@ConditionActionId,@PortEngineerId,@WorkItemReportTitle,
  @WorkItemReportDateIssued,@WorkItemReportDateReturned,@MachineryHistoryRelevant,@WorkItemReportText,@WorkItemReportResponse,@NewWorkItemId)
end