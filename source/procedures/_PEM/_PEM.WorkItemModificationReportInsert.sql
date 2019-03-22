create procedure "_PEM"."WorkItemModificationReportInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemModId integer,
  in @WorkItemReportWorkItemId integer,
  in @WorkItemReportId integer ) 
result( 
  "WorkItemReportReferenceId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemModificationReportInsert"(@VesselId,@WorkItemId,@WorkItemModId,@WorkItemReportWorkItemId,@WorkItemReportId)
end