create procedure "_PEM"."WorkItemReportReferenceNoteInsert"( 
  in @VesselId integer,
  in @WorkItemId integer,
  in @WorkItemReportId integer,
  in @PortEngineerNoteId integer ) 
result( 
  "WorkItemReportReferenceId" integer,
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  call "PEM"."WorkItemReportReferenceNoteInsert"(@VesselId,@WorkItemId,@WorkItemReportId,@PortEngineerNoteId)
end