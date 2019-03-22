create procedure "_PEM"."WorkItemReportReferenceReportInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @ConditionReportWorkItemId integer,
  in @ConditionReportId integer ) 
result( 
  "WorkItemReportReferenceId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportReferenceReportInsert"(@VesselId,@WorkItemId,@WorkItemReportId,@ConditionReportWorkItemId,@ConditionReportId)
end