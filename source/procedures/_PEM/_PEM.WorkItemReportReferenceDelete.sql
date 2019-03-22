create procedure "_PEM"."WorkItemReportReferenceDelete"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @WorkItemReportReferenceId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportReferenceDelete"(@VesselId,@WorkItemId,@WorkItemReportId,@WorkItemReportReferenceId)
end