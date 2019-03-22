create procedure "_PEM"."WorkItemReportReferenceModificationInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @WorkItemModWorkItemId integer,
  in @WorkItemModId integer ) 
result( 
  "WorkItemReportReferenceId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportReferenceModificationInsert"(@VesselId,@WorkItemId,@WorkItemReportId,@WorkItemModWorkItemId,@WorkItemModId)
end