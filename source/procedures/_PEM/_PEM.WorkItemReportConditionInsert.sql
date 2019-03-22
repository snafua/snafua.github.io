create procedure "_PEM"."WorkItemReportConditionInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @ConditionActionId integer,
  in @PortEngineerId integer,
  in @WorkItemReportTitle char(128),
  in @WorkItemReportDateIssued date,
  in @WorkItemReportDateReturned date,
  in @MachineryHistoryRelevant bit ) 
result( 
  "WorkItemReportId" integer,
  "Success" bit,
  "ErrorMessage" char(156) ) 
begin
  call "PEM"."WorkItemReportConditionInsert"(@VesselId,@WorkItemId,@ConditionActionId,@PortEngineerId,@WorkItemReportTitle,
  @WorkItemReportDateIssued,@WorkItemReportDateReturned,@MachineryHistoryRelevant)
end